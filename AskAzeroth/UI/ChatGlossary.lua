-- luacheck: read globals ChatFrameUtil ChatFrame_AddMessageEventFilter NUM_CHAT_WINDOWS CHAT_FRAMES FCF_OpenTemporaryWindow GameTooltip hooksecurefunc
local _, ns = ...

-- Glossary terms in the normal chat (party, raid, guild, whispers, say,
-- channels): the first place of each term in a line becomes a link;
-- hovering shows the explanation, a click opens the term in the glossary.
-- Uses the terms of the client language, the English ones and the chat
-- forms (Core/Data/Glossary.lua, field chat). Can be switched off in the
-- settings (settings.chatGlossary).
--
-- Only text outside escape sequences is touched: links, coloured text,
-- textures, atlases and protected names (|K…|k) stay as they are. Lines
-- with secret values are left alone (the game skips the filters for them
-- anyway). The links use the game's "addon:" link type, so the chat's own
-- click handling knows them.
local ChatGlossary = {}
ns.ChatGlossary = ChatGlossary

local W = ns.Widgets
local Glossary = ns.Glossary
local GlossaryLinks = ns.GlossaryLinks

local LINK_PREFIX = "addon:AskAzeroth:glossary:"
local LINK_COLOR = W.Hex(W.BLUE)

local EVENTS = {
	"CHAT_MSG_SAY",
	"CHAT_MSG_YELL",
	"CHAT_MSG_PARTY",
	"CHAT_MSG_PARTY_LEADER",
	"CHAT_MSG_RAID",
	"CHAT_MSG_RAID_LEADER",
	"CHAT_MSG_RAID_WARNING",
	"CHAT_MSG_INSTANCE_CHAT",
	"CHAT_MSG_INSTANCE_CHAT_LEADER",
	"CHAT_MSG_GUILD",
	"CHAT_MSG_OFFICER",
	"CHAT_MSG_WHISPER",
	"CHAT_MSG_WHISPER_INFORM",
	"CHAT_MSG_CHANNEL",
}

function ChatGlossary.IsEnabled()
	return ns.db ~= nil and ns.db.settings.chatGlossary ~= false
end

function ChatGlossary.SetEnabled(enabled)
	ns.db.settings.chatGlossary = enabled and true or false
end

-- Ends of escape sequences that hide text from us: after "|H" the link
-- runs to the second "|h", the others to their closing code.
local CLOSE = { c = "|r", T = "|t", A = "|a", K = "|k" }

-- Ranges { first, last } of plain text in a chat line, outside escape
-- sequences.
local function PlainRanges(text)
	local ranges = {}
	local start, i, length = 1, 1, #text
	local function Close(before)
		if before >= start then
			ranges[#ranges + 1] = { start, before }
		end
	end
	while i <= length do
		local found = text:find("|", i, true)
		if not found then
			break
		end
		local code = text:sub(found + 1, found + 1)
		if code == "|" then
			-- An escaped "|" is plain text.
			i = found + 2
		else
			Close(found - 1)
			local resume
			if code == "H" then
				local dataEnd = text:find("|h", found + 2, true)
				local textEnd = dataEnd and text:find("|h", dataEnd + 2, true)
				resume = textEnd and textEnd + 2
			elseif CLOSE[code] then
				local stop = text:find(CLOSE[code], found + 2, true)
				resume = stop and stop + 2
			else
				resume = found + 2
			end
			if not resume then
				return ranges
			end
			start, i = resume, resume
		end
	end
	Close(length)
	return ranges
end

local function Link(entry, label)
	return ("|c%s|H%s%s|h%s|h|r"):format(LINK_COLOR, LINK_PREFIX, entry.id, label)
end

-- Chat line with links for its glossary terms, each entry once.
local function Annotate(text, lang)
	local parts, last, used = {}, 0, {}
	for _, range in ipairs(PlainRanges(text)) do
		local segment = text:sub(range[1], range[2])
		for _, found in ipairs(Glossary.Find(segment, lang, true, true)) do
			local entry = found[3]
			if not used[entry] then
				used[entry] = true
				local first, stop = range[1] + found[1] - 1, range[1] + found[2] - 1
				parts[#parts + 1] = text:sub(last + 1, first - 1)
				parts[#parts + 1] = Link(entry, text:sub(first, stop))
				last = stop
			end
		end
	end
	if last == 0 then
		return text
	end
	parts[#parts + 1] = text:sub(last + 1)
	return table.concat(parts)
end
ChatGlossary.Annotate = Annotate

-- Every chat frame runs the filters for a line again: keep the results of
-- the last lines.
local cache, cacheSize = {}, 0
local CACHE_MAX = 200

local function Filter(_, _, message, ...)
	if type(message) ~= "string" or (issecretvalue and issecretvalue(message)) or not ChatGlossary.IsEnabled() then
		return false
	end
	local result = cache[message]
	if not result then
		if cacheSize >= CACHE_MAX then
			cache, cacheSize = {}, 0
		end
		result = Annotate(message, ns.FaqRefs.ReaderLanguage())
		cache[message] = result
		cacheSize = cacheSize + 1
	end
	if result == message then
		return false
	end
	return false, result, ...
end

local function EntryOfLink(link)
	if type(link) ~= "string" or link:sub(1, #LINK_PREFIX) ~= LINK_PREFIX then
		return nil
	end
	return Glossary.Get(link:sub(#LINK_PREFIX + 1))
end

-- Tooltip and click on our links in a chat frame. The hooks run after the
-- chat's own handlers and only act on our links.
local hooked = {}

local function HookFrame(frame)
	if not frame or hooked[frame] or not frame.HookScript then
		return
	end
	hooked[frame] = true
	frame:HookScript("OnHyperlinkEnter", function(self, link)
		local entry = EntryOfLink(link)
		if entry then
			GlossaryLinks.ShowTooltip(self, entry, nil, true)
		end
	end)
	frame:HookScript("OnHyperlinkLeave", function(_, link)
		if EntryOfLink(link) then
			GameTooltip:Hide()
		end
	end)
	frame:HookScript("OnHyperlinkClick", function(_, link, _, button)
		local entry = EntryOfLink(link)
		if entry and button == "LeftButton" then
			GameTooltip:Hide()
			ns.UI.ShowGlossary(entry.id)
		end
	end)
end

local function HookFrames()
	for i = 1, NUM_CHAT_WINDOWS or 10 do
		HookFrame(_G["ChatFrame" .. i])
	end
	-- Temporary windows (whispers, pet battles) are listed here too.
	for _, name in ipairs(type(CHAT_FRAMES) == "table" and CHAT_FRAMES or {}) do
		HookFrame(_G[name])
	end
end

local AddFilter = ChatFrameUtil and ChatFrameUtil.AddMessageEventFilter or ChatFrame_AddMessageEventFilter
if AddFilter then
	for _, event in ipairs(EVENTS) do
		AddFilter(event, Filter)
	end
end

ns:RegisterEvent("PLAYER_LOGIN", HookFrames)
-- Chat windows can be added later.
ns:RegisterEvent("UPDATE_CHAT_WINDOWS", HookFrames)
if FCF_OpenTemporaryWindow then
	hooksecurefunc("FCF_OpenTemporaryWindow", HookFrames)
end
