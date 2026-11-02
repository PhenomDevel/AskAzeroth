local _, ns = ...

-- Markup inside the addon's own texts (FAQ answers), so keys, interface
-- names and chat commands stand out from the running text:
--
--   [M]                   a key or key combination ("[Shift]+[Click]")
--   {Key Bindings}        a window, button, tab or menu path
--                         ("{Game Menu > Options}")
--   `/who`                a chat command
--
-- The delimiters never show; UI/GlossaryLinks.lua draws the inner text in
-- the colour of its kind (W.KEY, W.INTERFACE, W.COMMAND). Spell names and
-- glossary terms inside markup are not linked. Player texts never get
-- markup: only texts that ship with the addon use it.
local FaqMarkup = {}
ns.FaqMarkup = FaqMarkup

-- Opening character -> closing character and kind.
local KINDS = {
	["["] = { close = "]", kind = "key" },
	["{"] = { close = "}", kind = "interface" },
	["`"] = { close = "`", kind = "command" },
}
local OPENERS = "[%[{`]"
-- Longest inner text; a longer one is taken as plain text.
local MAX_INNER = 60

-- Places of markup in text, in text order: a list of
-- { first, last, kind, inner } where first/last include the delimiters.
-- An opener without its closer, an empty or overlong inner text, or one
-- with a line break is left as plain text.
function FaqMarkup.Find(text)
	local found = {}
	local init = 1
	while true do
		local first = text:find(OPENERS, init)
		if not first then
			break
		end
		local spec = KINDS[text:sub(first, first)]
		local last = text:find(spec.close, first + 1, true)
		local inner = last and text:sub(first + 1, last - 1)
		if inner and inner ~= "" and #inner <= MAX_INNER and not inner:find("[\n%[%]{}`]") then
			found[#found + 1] = { first, last, spec.kind, inner }
			init = last + 1
		else
			init = first + 1
		end
	end
	return found
end

-- text without the markup delimiters (searching, measuring, tooltips).
function FaqMarkup.Strip(text)
	local places = FaqMarkup.Find(text)
	if #places == 0 then
		return text
	end
	local parts, last = {}, 0
	for _, place in ipairs(places) do
		parts[#parts + 1] = text:sub(last + 1, place[1] - 1)
		parts[#parts + 1] = place[4]
		last = place[2]
	end
	parts[#parts + 1] = text:sub(last + 1)
	return table.concat(parts)
end
