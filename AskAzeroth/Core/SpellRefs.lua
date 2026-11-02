-- luacheck: read globals C_Spell C_SpellBook Enum
local _, ns = ...

-- Spell names inside texts. The candidates are the spell IDs of
-- Core/Data/Spells.lua plus every active spell in the reader's own
-- spellbook (learned or not yet learned). Their names come from the client,
-- so they are in the client's language and stay right after any patch;
-- nothing here knows a spell name. SpellRefs.Find returns where those names
-- appear in a text; UI/GlossaryLinks.lua turns them into links with icon
-- and the game's spell tooltip.
local SpellRefs = {}
ns.SpellRefs = SpellRefs

local listed = {}
local skipped = {}

-- ids: list of spell IDs (Core/Data/Spells.lua).
function SpellRefs.Add(ids)
	for _, id in ipairs(ids) do
		listed[#listed + 1] = id
	end
end

-- ids: spell IDs whose names are never linked.
function SpellRefs.Skip(ids)
	for _, id in ipairs(ids) do
		skipped[id] = true
	end
end

local function Exists(id)
	if C_Spell and C_Spell.DoesSpellExist then
		return C_Spell.DoesSpellExist(id)
	end
	return true
end

local function NameOf(id)
	if not (C_Spell and C_Spell.GetSpellName) or not Exists(id) then
		return nil
	end
	local name = C_Spell.GetSpellName(id)
	if type(name) ~= "string" or (issecretvalue and issecretvalue(name)) or name == "" or name:find("|", 1, true) then
		return nil
	end
	return name
end

-- Icon (file ID or path) of a spell, nil when the client has none.
function SpellRefs.Icon(id)
	if C_Spell and C_Spell.GetSpellTexture then
		local icon = C_Spell.GetSpellTexture(id)
		if icon ~= nil and not (issecretvalue and issecretvalue(icon)) then
			return icon
		end
	end
	return nil
end

-- Active spells of the reader's spellbook, learned or still to learn.
-- The first skill line (general: Auto Attack, …) is left out.
local function SpellbookIds()
	local ids = {}
	if not (C_SpellBook and C_SpellBook.GetNumSpellBookSkillLines and Enum and Enum.SpellBookSpellBank) then
		return ids
	end
	local bank = Enum.SpellBookSpellBank.Player
	local types = Enum.SpellBookItemType
	for line = 2, C_SpellBook.GetNumSpellBookSkillLines() do
		local info = C_SpellBook.GetSpellBookSkillLineInfo(line)
		if info and info.itemIndexOffset and info.numSpellBookItems then
			for slot = info.itemIndexOffset + 1, info.itemIndexOffset + info.numSpellBookItems do
				local item = C_SpellBook.GetSpellBookItemInfo(slot, bank)
				if item and item.spellID and not item.isPassive
					and (item.itemType == types.Spell or item.itemType == types.FutureSpell) then
					ids[#ids + 1] = item.spellID
				end
			end
		end
	end
	return ids
end

-- Names to look for, longest first ("Greater Heal" before "Heal"); built
-- on first use and again after the spellbook changed.
local forms
local namesFound = { listed = 0, spellbook = 0 }

local function Build()
	forms = {}
	local seen = {}
	for id in pairs(skipped) do
		local name = NameOf(id)
		if name then
			seen[name] = true
		end
	end
	local function AddAll(ids, key)
		local count = 0
		for _, id in ipairs(ids) do
			local name = not skipped[id] and NameOf(id)
			if name and #name >= 4 and not seen[name] then
				seen[name] = true
				forms[#forms + 1] = { text = name, id = id }
				count = count + 1
			end
		end
		namesFound[key] = count
	end
	-- Own spellbook first: its IDs are the reader's real ranks.
	AddAll(SpellbookIds(), "spellbook")
	AddAll(listed, "listed")
	table.sort(forms, function(a, b)
		if #a.text ~= #b.text then
			return #a.text > #b.text
		end
		return a.text < b.text
	end)
end

-- Number of linkable names: from the list, from the reader's spellbook.
function SpellRefs.Count()
	if not forms then
		Build()
	end
	return namesFound.listed, namesFound.spellbook
end

-- Characters next to a name that still end a word: ASCII non-alphanumerics
-- and the usual multi-byte quotes and dashes (« » „ “ ” ‘ ’ – — …), so
-- "„Sturmangriff“" or "«Рывок»" are found. Any other multi-byte character
-- counts as a letter.
local PUNCTUATION = {
	["\194\171"] = true, ["\194\187"] = true, ["\194\160"] = true,
	["\226\128\158"] = true, ["\226\128\156"] = true, ["\226\128\157"] = true,
	["\226\128\152"] = true, ["\226\128\153"] = true, ["\226\128\154"] = true,
	["\226\128\147"] = true, ["\226\128\148"] = true, ["\226\128\166"] = true,
}

local function IsLetterBefore(text, pos)
	local byte = text:byte(pos)
	if byte == nil then
		return false
	end
	if byte < 128 then
		return string.char(byte):find("%w") ~= nil
	end
	-- Walk back to the lead byte of this UTF-8 character.
	local first = pos
	while first > 1 and first > pos - 3 and text:byte(first) >= 128 and text:byte(first) < 192 do
		first = first - 1
	end
	return not PUNCTUATION[text:sub(first, pos)]
end

local function IsLetterAfter(text, pos)
	local byte = text:byte(pos)
	if byte == nil then
		return false
	end
	if byte < 128 then
		return string.char(byte):find("%w") ~= nil
	end
	local length = byte >= 240 and 4 or byte >= 224 and 3 or byte >= 192 and 2 or 1
	return not PUNCTUATION[text:sub(pos, pos + length - 1)]
end

-- Places of spell names in text (plain or escaped text), each spell at
-- most once (its first place), non-overlapping, in text order: a list of
-- { first, last, spellID }. Names are matched as written by the client.
function SpellRefs.Find(text)
	if not forms then
		Build()
	end
	local found, taken = {}, {}
	for _, form in ipairs(forms) do
		local init = 1
		while true do
			local first, last = text:find(form.text, init, true)
			if not first then
				break
			end
			local free = not IsLetterBefore(text, first - 1) and not IsLetterAfter(text, last + 1)
			for i = first, last do
				free = free and not taken[i]
			end
			if free then
				for i = first, last do
					taken[i] = true
				end
				found[#found + 1] = { first, last, form.id }
				break
			end
			init = last + 1
		end
	end
	table.sort(found, function(a, b)
		return a[1] < b[1]
	end)
	return found
end

-- SPELLS_CHANGED comes whenever the spellbook changes (a spell learned, a
-- new rank, another specialisation): build the names again on next use.
local function Invalidate()
	if forms then
		forms = nil
		ns:Fire("AA_SPELLS_CHANGED")
	end
end
ns:RegisterEvent("SPELLS_CHANGED", Invalidate)
