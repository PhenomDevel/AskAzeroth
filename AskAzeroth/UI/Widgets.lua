-- luacheck: read globals GameTooltip RAID_CLASS_COLORS LOCALIZED_CLASS_NAMES_MALE
local _, ns = ...

-- Small widget kit for the window, built on the game's standard templates.
local W = {}
ns.Widgets = W

W.GOLD = { 1, 0.82, 0 }
W.TEXT = { 0.9, 0.9, 0.9 }
W.WHITE = { 1, 1, 1 }
W.MUTED = { 0.62, 0.62, 0.62 }
W.GREEN = { 0.12, 1, 0 }
W.RED = { 1, 0.3, 0.3 }

W.BLUE = { 0.5, 0.75, 1 }
-- Texture markup for symbols the game fonts lack; size follows the font.
W.STAR = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t "
W.CHECK = "|TInterface\\RaidFrame\\ReadyCheck-Ready:0|t"
W.ARROW_DOWN = "|TInterface\\Buttons\\Arrow-Down-Up:0|t "
W.ARROW_UP = "|TInterface\\Buttons\\Arrow-Up-Up:0|t "

local WHITE8 = "Interface\\Buttons\\WHITE8x8"
local BACKDROP = { bgFile = WHITE8, edgeFile = WHITE8, edgeSize = 1 }

local function Color(region, color, alpha)
	region:SetTextColor(color[1], color[2], color[3], alpha or 1)
end
W.Color = Color

-- Dark inset panel with a thin border.
function W.Panel(parent, bg, border)
	local panel = CreateFrame("Frame", nil, parent, "BackdropTemplate")
	panel:SetBackdrop(BACKDROP)
	bg = bg or { 0.05, 0.05, 0.05, 0.95 }
	border = border or { 0.17, 0.17, 0.17, 1 }
	panel:SetBackdropColor(bg[1], bg[2], bg[3], bg[4] or 1)
	panel:SetBackdropBorderColor(border[1], border[2], border[3], border[4] or 1)
	return panel
end

function W.Text(parent, font, color)
	local text = parent:CreateFontString(nil, "OVERLAY", font or "GameFontHighlight")
	if color then
		Color(text, color)
	end
	text:SetJustifyH("LEFT")
	return text
end

-- Section heading in the game's yellow.
function W.Header(parent, label, font)
	local text = W.Text(parent, font or "GameFontNormalLarge", W.GOLD)
	text:SetText(label)
	return text
end

-- Wrapping paragraph of the given width.
function W.Paragraph(parent, width, label, font, color)
	local text = W.Text(parent, font or "GameFontHighlight", color)
	text:SetWidth(width)
	text:SetWordWrap(true)
	text:SetText(label)
	return text
end

function W.Button(parent, label, width, onClick)
	local button = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
	button:SetText(label)
	button:SetSize(width or (button:GetFontString():GetStringWidth() + 30), 24)
	if onClick then
		button:SetScript("OnClick", onClick)
	end
	return button
end

function W.Tooltip(frame, title, text)
	frame:HookScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(title, 1, 1, 1)
		if text then
			GameTooltip:AddLine(text, nil, nil, nil, true)
		end
		GameTooltip:Show()
	end)
	frame:HookScript("OnLeave", function()
		GameTooltip:Hide()
	end)
end

-- Checkbox with a label. get() returns the state, set(checked) stores it and
-- may return false to refuse the change (the box then flips back).
-- :Refresh() reads get() again.
function W.Checkbox(parent, label, get, set)
	local box = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
	box:SetSize(26, 26)
	local text = W.Text(box, "GameFontHighlight")
	text:SetPoint("LEFT", box, "RIGHT", 2, 1)
	text:SetText(label)
	box.label = text
	-- Clicking the label toggles too.
	box:SetHitRectInsets(0, -(text:GetStringWidth() + 6), 0, 0)
	function box:Refresh()
		self:SetChecked(get() and true or false)
	end
	box:SetScript("OnClick", function(self)
		if set(self:GetChecked() and true or false) == false then
			self:Refresh()
		end
	end)
	box:Refresh()
	return box
end

-- Single-line input. onChange(text) runs on user input.
function W.EditBox(parent, width, onChange)
	local box = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
	box:SetSize(width, 20)
	box:SetAutoFocus(false)
	box:SetScript("OnEscapePressed", box.ClearFocus)
	box:SetScript("OnEnterPressed", box.ClearFocus)
	box:SetScript("OnTextChanged", function(self, userInput)
		if userInput and onChange then
			onChange(self:GetText())
		end
	end)
	return box
end

-- Rounded-look search field with a magnifier and placeholder text.
function W.SearchBox(parent, width, placeholder, onChange)
	local box = CreateFrame("EditBox", nil, parent, "SearchBoxTemplate")
	box:SetSize(width, 22)
	box:SetAutoFocus(false)
	if box.Instructions then
		box.Instructions:SetText(placeholder)
	end
	box:HookScript("OnTextChanged", function(self, userInput)
		if userInput and onChange then
			onChange(self:GetText())
		end
	end)
	-- The clear button changes the text without userInput.
	if box.clearButton then
		box.clearButton:HookScript("OnClick", function()
			if onChange then
				onChange("")
			end
		end)
	end
	return box
end

-- Multi-line text field with a character counter below it.
function W.TextArea(parent, width, height, maxBytes, onChange)
	local frame = W.Panel(parent, { 0, 0, 0, 1 }, { 0.3, 0.3, 0.3, 1 })
	frame:SetSize(width, height)

	local box = CreateFrame("EditBox", nil, frame)
	box:SetMultiLine(true)
	box:SetAutoFocus(false)
	box:SetFontObject("ChatFontNormal")
	box:SetMaxBytes(maxBytes + 1)
	box:SetPoint("TOPLEFT", 7, -6)
	box:SetPoint("BOTTOMRIGHT", -7, 6)
	box:SetScript("OnEscapePressed", box.ClearFocus)
	frame:EnableMouse(true)
	frame:SetScript("OnMouseDown", function()
		box:SetFocus()
	end)

	local counter = W.Text(frame, "GameFontDisableSmall")
	counter:SetPoint("TOPRIGHT", frame, "BOTTOMRIGHT", 0, -4)
	local function UpdateCounter()
		counter:SetFormattedText("%d / %d", #box:GetText(), maxBytes)
	end
	box:SetScript("OnTextChanged", function(self, userInput)
		UpdateCounter()
		if userInput and onChange then
			onChange(self:GetText())
		end
	end)

	frame.editBox = box
	frame.counter = counter
	function frame:SetText(text)
		box:SetText(text or "")
		UpdateCounter()
	end
	function frame:GetText()
		return box:GetText()
	end
	UpdateCounter()
	return frame
end

-- Dropdown button. setup(root) fills the menu (MenuUtil descriptions).
function W.Menu(parent, width, setup)
	local dropdown = CreateFrame("DropdownButton", nil, parent, "WowStyle1DropdownTemplate")
	dropdown:SetWidth(width)
	dropdown:SetupMenu(function(_, root)
		setup(root)
	end)
	function dropdown:Refresh()
		self:GenerateMenu()
	end
	return dropdown
end

-- Dropdown with radio entries: options = list or function returning
-- { value, label }; get() returns the selected value, set(value) stores it.
function W.Dropdown(parent, width, options, get, set)
	return W.Menu(parent, width, function(root)
		local list = type(options) == "function" and options() or options
		for _, option in ipairs(list) do
			root:CreateRadio(option.label, function()
				return get() == option.value
			end, function()
				set(option.value)
			end)
		end
	end)
end

function W.Divider(parent)
	local line = parent:CreateTexture(nil, "ARTWORK")
	line:SetHeight(1)
	line:SetColorTexture(0.3, 0.25, 0.15, 0.8)
	return line
end

-- Pill-shaped toggle. :SetActive(bool) switches between the gold (active)
-- and the grey look; removable chips show a "×".
function W.Chip(parent, onClick)
	local chip = CreateFrame("Button", nil, parent, "BackdropTemplate")
	chip:SetBackdrop(BACKDROP)
	chip:SetHeight(22)
	local text = W.Text(chip, "GameFontHighlightSmall")
	text:SetPoint("CENTER")
	chip.text = text
	chip:SetHighlightTexture(WHITE8)
	chip:GetHighlightTexture():SetVertexColor(1, 0.82, 0, 0.08)
	chip:SetScript("OnClick", function(self)
		if onClick then
			onClick(self)
		end
	end)
	function chip:SetLabel(label, removable)
		text:SetText(removable and (label .. "  |cff9d9d9d×|r") or label)
		self:SetWidth(text:GetStringWidth() + 20)
	end
	function chip:SetActive(active)
		self.active = active
		if active then
			self:SetBackdropColor(0.24, 0.19, 0.09, 1)
			self:SetBackdropBorderColor(0.79, 0.635, 0.29, 1)
			Color(text, W.GOLD)
		else
			self:SetBackdropColor(0.13, 0.13, 0.13, 1)
			self:SetBackdropBorderColor(0.3, 0.3, 0.3, 1)
			Color(text, W.WHITE)
		end
	end
	chip:SetActive(false)
	return chip
end

-- Lays chips out left to right from anchor; returns the right edge offset.
function W.FlowChips(chips, parent, x, y, gap)
	for _, chip in ipairs(chips) do
		if chip:IsShown() then
			chip:ClearAllPoints()
			chip:SetPoint("TOPLEFT", parent, "TOPLEFT", x, y)
			x = x + chip:GetWidth() + (gap or 6)
		end
	end
	return x
end

--------------------------------------------------------------------------------
-- Formatting
--------------------------------------------------------------------------------

local L = ns.L

-- "just now", "5 min ago", "2 h ago".
function W.Ago(seconds)
	if seconds < 60 then
		return L.AGO_NOW
	elseif seconds < 3600 then
		return L.AGO_MINUTES:format(math.floor(seconds / 60))
	end
	return L.AGO_HOURS:format(math.floor(seconds / 3600))
end

-- Minutes, rounded up, at least 1.
function W.Minutes(seconds)
	return math.max(1, math.ceil(seconds / 60))
end

-- Colour code ("ffrrggbb") of a class file name, or nil.
function W.ClassColorHex(classFile)
	local color = classFile and RAID_CLASS_COLORS and RAID_CLASS_COLORS[classFile]
	return color and color.colorStr
end

function W.ClassName(classFile)
	return classFile and LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE[classFile]
end

-- Short player name, coloured by class when known.
function W.PlayerText(fullName, classFile)
	local name = ns.Util.EscapeText(ns.Util.ShortName(fullName))
	local hex = W.ClassColorHex(classFile)
	return hex and ("|c%s%s|r"):format(hex, name) or name
end

W.STATUS_COLORS = { open = "ffffd100", answered = "ff80bfff", solved = "ff40ff60", closed = "ff9d9d9d" }

function W.StatusText(status, answerCount)
	local label
	if status == "answered" then
		label = (answerCount == 1 and L.STATUS_ANSWER_ONE or L.STATUS_ANSWERS):format(answerCount)
	else
		label = L["STATUS_" .. status:upper()]
	end
	return ("|c%s%s|r"):format(W.STATUS_COLORS[status] or "ffffffff", label)
end
