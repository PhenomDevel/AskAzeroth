-- luacheck: read globals GameTooltip
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

local function Color(region, color, alpha)
	region:SetTextColor(color[1], color[2], color[3], alpha or 1)
end
W.Color = Color

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
