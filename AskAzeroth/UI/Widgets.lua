-- luacheck: read globals GameTooltip RAID_CLASS_COLORS LOCALIZED_CLASS_NAMES_MALE CreateFont GameFontNormalLarge GetLocale
local _, ns = ...

-- Small widget kit for the window. Dark leather-and-gold look: our own
-- backdrops for panels, buttons, chips and input fields; scroll bars,
-- checkboxes and dropdowns stay the game's templates.
local W = {}
ns.Widgets = W

-- Palette (0..1 RGB). Named after their use, not their hue.
local function RGB(hex)
	return { tonumber(hex:sub(1, 2), 16) / 255, tonumber(hex:sub(3, 4), 16) / 255, tonumber(hex:sub(5, 6), 16) / 255 }
end
W.RGB = RGB
W.COLORS = {
	window = RGB("1c1812"),
	header = RGB("120f0b"),
	nav = RGB("15120d"),
	navActive = RGB("2e2618"),
	threadHead = RGB("1f1a13"),
	selected = RGB("2a2217"),
	card = RGB("211c14"),
	cardFavorite = RGB("262016"),
	input = RGB("0f0c09"),
	button = RGB("2a231a"),
	buttonPrimary = RGB("7a5a1e"),
	buttonSuccess = RGB("1f2a1c"),
	frame = RGB("6b5533"),
	line = RGB("3d3122"),
	field = RGB("4a3c28"),
	favorite = RGB("8a6d32"),
	accent = RGB("d9b45a"),
	success = RGB("4f7a46"),
}

W.GOLD = RGB("f0d68c")
W.ACCENT = RGB("d9b45a")
W.TEXT = RGB("e8dfcc")
W.SOFT = RGB("cfc4ad")
W.WHITE = W.TEXT
W.MUTED = RGB("a89a80")
W.GREEN = RGB("8fd18f")
W.RED = RGB("e8a0a0")
W.BLUE = RGB("8ab4e8")
W.DARK = RGB("1c1812")

-- One colour per question category, also used for its label.
local CATEGORY_COLORS = {
	quest = RGB("e7a35a"),
	class = RGB("8ab4e8"),
	dungeon = RGB("b59ae0"),
	prof = RGB("8fd18f"),
	ui = RGB("9fc9c0"),
	misc = RGB("cfc4ad"),
}

function W.CategoryColor(key)
	return CATEGORY_COLORS[key] or W.SOFT
end

local function Hex(color)
	local function Byte(value)
		return math.floor(value * 255 + 0.5)
	end
	return ("ff%02x%02x%02x"):format(Byte(color[1]), Byte(color[2]), Byte(color[3]))
end
W.Hex = Hex

-- Category name in its colour.
function W.CategoryText(key)
	local category = ns.C.GetCategory(key)
	return ("|c%s%s|r"):format(Hex(W.CategoryColor(key)), category and category.label or tostring(key))
end

-- Texture markup for symbols the game fonts lack; size follows the font.
W.STAR = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t "
W.CHECK = "|TInterface\\RaidFrame\\ReadyCheck-Ready:0|t"
W.ARROW_DOWN = "|TInterface\\Buttons\\Arrow-Down-Up:0|t "
W.ARROW_UP = "|TInterface\\Buttons\\Arrow-Up-Up:0|t "

local WHITE8 = "Interface\\Buttons\\WHITE8x8"
local BACKDROP = { bgFile = WHITE8, edgeFile = WHITE8, edgeSize = 1 }
local BACKDROP_THICK = { bgFile = WHITE8, edgeFile = WHITE8, edgeSize = 2 }
W.WHITE8 = WHITE8

-- Serif display font for window and dialog titles. Clients whose script
-- the font lacks keep the game's large font (also the fallback when the
-- file is missing).
local TITLE_FONT_FILES = { ruRU = "Fonts\\MORPHEUS_CYR.TTF", koKR = false, zhCN = false, zhTW = false }
local titleFont = CreateFont("AskAzerothTitleFont")
titleFont:CopyFontObject(GameFontNormalLarge)
local titleFile = TITLE_FONT_FILES[GetLocale()]
if titleFile == nil then
	titleFile = "Fonts\\MORPHEUS.TTF"
end
if titleFile then
	titleFont:SetFont(titleFile, 18, "")
end
W.TITLE_FONT = "AskAzerothTitleFont"

local function Color(region, color, alpha)
	region:SetTextColor(color[1], color[2], color[3], alpha or 1)
end
W.Color = Color

local function SetBackdropColors(frame, bg, border)
	frame:SetBackdropColor(bg[1], bg[2], bg[3], bg[4] or 1)
	frame:SetBackdropBorderColor(border[1], border[2], border[3], border[4] or 1)
end
W.SetColors = SetBackdropColors

-- Panel with a thin border. bg and border are colours ({ r, g, b[, a] });
-- default is a card. thick = 2 px border (windows, dialogs, toasts).
function W.Panel(parent, bg, border, thick)
	local panel = CreateFrame("Frame", nil, parent, "BackdropTemplate")
	panel:SetBackdrop(thick and BACKDROP_THICK or BACKDROP)
	SetBackdropColors(panel, bg or W.COLORS.card, border or W.COLORS.line)
	return panel
end

-- Solid colour texture, e.g. a section background or a separator line.
function W.Fill(parent, color, layer, alpha)
	local texture = parent:CreateTexture(nil, layer or "BACKGROUND")
	texture:SetColorTexture(color[1], color[2], color[3], alpha or color[4] or 1)
	return texture
end

function W.Text(parent, font, color)
	local text = parent:CreateFontString(nil, "OVERLAY", font or "GameFontHighlight")
	Color(text, color or W.TEXT)
	text:SetJustifyH("LEFT")
	return text
end

-- Section heading in light gold.
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

-- Bar along the top of a dialog: title in the display font, a close button.
function W.TitleBar(parent, label, onClose)
	local bar = CreateFrame("Frame", nil, parent)
	bar:SetPoint("TOPLEFT", 2, -2)
	bar:SetPoint("TOPRIGHT", -2, -2)
	bar:SetHeight(44)
	W.Fill(bar, W.COLORS.header):SetAllPoints()
	local line = W.Fill(bar, W.COLORS.frame, "BORDER")
	line:SetHeight(1)
	line:SetPoint("BOTTOMLEFT")
	line:SetPoint("BOTTOMRIGHT")
	bar.title = W.Text(bar, W.TITLE_FONT, W.ACCENT)
	bar.title:SetPoint("LEFT", 16, 0)
	bar.title:SetText(label)
	if onClose then
		bar.close = W.CloseButton(bar, onClose)
		bar.close:SetPoint("RIGHT", -10, 0)
	end
	return bar
end

local BUTTON_STYLES = {
	secondary = { bg = W.COLORS.button, border = W.COLORS.frame, text = W.TEXT },
	primary = { bg = W.COLORS.buttonPrimary, border = W.COLORS.accent, text = RGB("fff4d6") },
	success = { bg = W.COLORS.buttonSuccess, border = W.COLORS.success, text = RGB("b9e0b0") },
}

local function UpdateButtonLook(button)
	local style = BUTTON_STYLES[button.style] or BUTTON_STYLES.secondary
	if button:IsEnabled() then
		SetBackdropColors(button, style.bg, style.border)
		Color(button:GetFontString(), style.text)
	else
		SetBackdropColors(button, W.COLORS.nav, W.COLORS.line)
		Color(button:GetFontString(), W.MUTED, 0.7)
	end
end

-- Flat button. style: "secondary" (default), "primary" (gold, the main
-- action of a view) or "success" (green, "mark as solved").
function W.Button(parent, label, width, onClick, style)
	local button = CreateFrame("Button", nil, parent, "BackdropTemplate")
	button:SetBackdrop(BACKDROP)
	local text = button:CreateFontString(nil, "OVERLAY", style == "primary" and "GameFontNormal" or "GameFontHighlight")
	text:SetPoint("LEFT", 8, 0)
	text:SetPoint("RIGHT", -8, 0)
	text:SetWordWrap(false)
	button:SetFontString(text)
	button:SetHighlightTexture(WHITE8)
	button:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.08)
	button.style = style or "secondary"
	button:SetText(label)
	button:SetSize(width or (text:GetStringWidth() + 28), 26)
	button:SetScript("OnEnable", UpdateButtonLook)
	button:SetScript("OnDisable", UpdateButtonLook)
	function button:SetStyle(name)
		self.style = name
		UpdateButtonLook(self)
	end
	UpdateButtonLook(button)
	if onClick then
		button:SetScript("OnClick", onClick)
	end
	return button
end

-- Small square button with an icon texture.
function W.IconButton(parent, size, texture, onClick)
	local button = CreateFrame("Button", nil, parent, "BackdropTemplate")
	button:SetBackdrop(BACKDROP)
	SetBackdropColors(button, W.COLORS.button, W.COLORS.frame)
	button:SetSize(size, size)
	button.icon = button:CreateTexture(nil, "ARTWORK")
	button.icon:SetPoint("TOPLEFT", 5, -5)
	button.icon:SetPoint("BOTTOMRIGHT", -5, 5)
	button.icon:SetTexture(texture)
	button:SetHighlightTexture(WHITE8)
	button:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.1)
	if onClick then
		button:SetScript("OnClick", onClick)
	end
	return button
end

function W.CloseButton(parent, onClick)
	local button = W.IconButton(parent, 26, "Interface\\Buttons\\UI-StopButton", onClick)
	button.icon:SetVertexColor(W.TEXT[1], W.TEXT[2], W.TEXT[3])
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
	local text = W.Text(box, "GameFontHighlight", W.TEXT)
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

-- Dark input look; the border turns gold while the field has focus.
local function StyleField(frame, box)
	frame:SetBackdrop(BACKDROP)
	SetBackdropColors(frame, W.COLORS.input, W.COLORS.field)
	box:HookScript("OnEditFocusGained", function()
		frame:SetBackdropBorderColor(W.COLORS.accent[1], W.COLORS.accent[2], W.COLORS.accent[3], 1)
	end)
	box:HookScript("OnEditFocusLost", function()
		frame:SetBackdropBorderColor(W.COLORS.field[1], W.COLORS.field[2], W.COLORS.field[3], 1)
	end)
end

local function NewEditBox(parent, width, height)
	local box = CreateFrame("EditBox", nil, parent, "BackdropTemplate")
	box:SetSize(width, height)
	box:SetAutoFocus(false)
	box:SetFontObject("ChatFontNormal")
	box:SetTextColor(W.TEXT[1], W.TEXT[2], W.TEXT[3])
	box:SetTextInsets(8, 8, 0, 0)
	box:SetScript("OnEscapePressed", box.ClearFocus)
	box:SetScript("OnEnterPressed", box.ClearFocus)
	StyleField(box, box)
	return box
end

-- Single-line input. onChange(text) runs on user input.
function W.EditBox(parent, width, onChange)
	local box = NewEditBox(parent, width, 28)
	box:SetScript("OnTextChanged", function(self, userInput)
		if userInput and onChange then
			onChange(self:GetText())
		end
	end)
	return box
end

-- Search field with a magnifier, placeholder text and a clear button.
function W.SearchBox(parent, width, placeholder, onChange)
	local box = NewEditBox(parent, width, 28)
	box:SetTextInsets(24, 22, 0, 0)
	local icon = box:CreateTexture(nil, "OVERLAY")
	icon:SetTexture("Interface\\Common\\UI-Searchbox-Icon")
	icon:SetSize(14, 14)
	icon:SetPoint("LEFT", 6, -1)
	icon:SetVertexColor(W.MUTED[1], W.MUTED[2], W.MUTED[3])
	local hint = W.Text(box, "GameFontHighlight", W.MUTED)
	hint:SetPoint("LEFT", 24, 0)
	hint:SetPoint("RIGHT", -22, 0)
	hint:SetWordWrap(false)
	hint:SetText(placeholder or "")
	local clear = CreateFrame("Button", nil, box)
	clear:SetSize(14, 14)
	clear:SetPoint("RIGHT", -6, 0)
	clear:SetNormalTexture("Interface\\FriendsFrame\\ClearBroadcastIcon")
	clear:SetAlpha(0.6)
	clear:Hide()
	local function Update()
		local empty = box:GetText() == ""
		hint:SetShown(empty and not box:HasFocus())
		clear:SetShown(not empty)
	end
	clear:SetScript("OnClick", function()
		box:SetText("")
		box:ClearFocus()
		Update()
		if onChange then
			onChange("")
		end
	end)
	box:HookScript("OnEditFocusGained", Update)
	box:HookScript("OnEditFocusLost", Update)
	box:SetScript("OnTextChanged", function(self, userInput)
		Update()
		if userInput and onChange then
			onChange(self:GetText())
		end
	end)
	return box
end

-- Multi-line text field with a character counter below it.
function W.TextArea(parent, width, height, maxBytes, onChange)
	local frame = CreateFrame("Frame", nil, parent, "BackdropTemplate")
	frame:SetSize(width, height)

	local box = CreateFrame("EditBox", nil, frame)
	box:SetMultiLine(true)
	box:SetAutoFocus(false)
	box:SetFontObject("ChatFontNormal")
	box:SetTextColor(W.TEXT[1], W.TEXT[2], W.TEXT[3])
	box:SetMaxBytes(maxBytes + 1)
	box:SetPoint("TOPLEFT", 8, -7)
	box:SetPoint("BOTTOMRIGHT", -8, 7)
	box:SetScript("OnEscapePressed", box.ClearFocus)
	StyleField(frame, box)
	frame:EnableMouse(true)
	frame:SetScript("OnMouseDown", function()
		box:SetFocus()
	end)

	local counter = W.Text(frame, "GameFontHighlightSmall", W.MUTED)
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

-- 1 px line in the separator colour.
function W.Divider(parent, color)
	return W.Fill(parent, color or W.COLORS.line, "ARTWORK")
end

-- Horizontal line along the bottom (or top) edge of a frame.
function W.EdgeLine(parent, edge, color)
	local line = W.Divider(parent, color)
	line:SetHeight(1)
	line:SetPoint(edge .. "LEFT")
	line:SetPoint(edge .. "RIGHT")
	return line
end

-- Vertical line along the right (or left) edge of a frame.
function W.SideLine(parent, side, color)
	local line = W.Divider(parent, color)
	line:SetWidth(1)
	line:SetPoint("TOP" .. side)
	line:SetPoint("BOTTOM" .. side)
	return line
end

-- Pill-shaped toggle. :SetActive(bool) switches between the gold (active)
-- and the outlined look; removable chips show a "×". color tints the label
-- of an inactive chip (category colours).
function W.Chip(parent, onClick, color)
	local chip = CreateFrame("Button", nil, parent, "BackdropTemplate")
	chip:SetBackdrop(BACKDROP)
	chip:SetHeight(22)
	local text = W.Text(chip, "GameFontHighlightSmall")
	text:SetPoint("CENTER")
	chip.text = text
	chip.color = color
	chip:SetHighlightTexture(WHITE8)
	chip:GetHighlightTexture():SetVertexColor(1, 0.85, 0.5, 0.08)
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
			SetBackdropColors(self, W.COLORS.accent, W.COLORS.accent)
			Color(text, W.DARK)
		else
			SetBackdropColors(self, W.COLORS.window, W.COLORS.field)
			Color(text, self.color or W.SOFT)
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

-- Like FlowChips, but starts a new line when maxWidth is reached. Returns
-- the height used.
function W.WrapChips(chips, parent, x, y, maxWidth, gap)
	gap = gap or 6
	local left, line, height = x, 0, 0
	for _, chip in ipairs(chips) do
		if chip:IsShown() then
			local width = chip:GetWidth()
			if left > x and left + width > x + maxWidth then
				left = x
				line = line + 1
			end
			chip:ClearAllPoints()
			chip:SetPoint("TOPLEFT", parent, "TOPLEFT", left, y - line * (chip:GetHeight() + gap))
			left = left + width + gap
			height = (line + 1) * chip:GetHeight() + line * gap
		end
	end
	return height
end

-- Row of a list: selected rows get a darker background and a gold bar on
-- the left, every row a separator line at the bottom.
function W.ListRowLook(row)
	row.selectedBg = W.Fill(row, W.COLORS.selected)
	row.selectedBg:SetAllPoints()
	row.accentBar = W.Fill(row, W.COLORS.accent, "ARTWORK")
	row.accentBar:SetWidth(3)
	row.accentBar:SetPoint("TOPLEFT")
	row.accentBar:SetPoint("BOTTOMLEFT")
	W.EdgeLine(row, "BOTTOM")
	function row:SetSelectedLook(selected)
		self.selectedBg:SetShown(selected)
		self.accentBar:SetShown(selected)
	end
	row:SetSelectedLook(false)
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

W.STATUS_COLORS = { open = "ffe8a0a0", answered = "fff0d68c", solved = "ff8fd18f", closed = "ffa89a80", withdrawn = "ffa89a80" }

function W.StatusText(status, answerCount)
	local label
	if status == "answered" then
		label = (answerCount == 1 and L.STATUS_ANSWER_ONE or L.STATUS_ANSWERS):format(answerCount)
	else
		label = L["STATUS_" .. status:upper()]
	end
	return ("|c%s%s|r"):format(W.STATUS_COLORS[status] or "ffffffff", label)
end
