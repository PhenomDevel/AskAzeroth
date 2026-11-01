local _, ns = ...

-- Placeholder pages until their milestones fill them: a heading and what
-- the page will offer.
local L = ns.L
local UI = ns.UI
local W = ns.Widgets

local function Placeholder(title, text)
	return function(content)
		local header = W.Header(content, title)
		header:SetPoint("TOPLEFT", 16, -16)
		local body = W.Paragraph(content, 520, text, "GameFontHighlight", W.TEXT)
		body:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, -10)
		local soon = W.Text(content, "GameFontDisable")
		soon:SetPoint("TOPLEFT", body, "BOTTOMLEFT", 0, -14)
		soon:SetText(L.PAGE_COMING_SOON)
		return { Refresh = function() end }
	end
end

UI.RegisterPage(UI.PAGE_QUESTIONS, L.PAGE_QUESTIONS, Placeholder(L.PAGE_QUESTIONS, L.PAGE_QUESTIONS_TEXT))
UI.RegisterPage(UI.PAGE_MY_QUESTIONS, L.PAGE_MY_QUESTIONS, Placeholder(L.PAGE_MY_QUESTIONS, L.PAGE_MY_QUESTIONS_TEXT))
UI.RegisterPage(UI.PAGE_PLAYERS, L.PAGE_PLAYERS, Placeholder(L.PAGE_PLAYERS, L.PAGE_PLAYERS_TEXT))
UI.RegisterPage(UI.PAGE_FAQ, L.PAGE_FAQ, Placeholder(L.PAGE_FAQ, L.PAGE_FAQ_TEXT))
