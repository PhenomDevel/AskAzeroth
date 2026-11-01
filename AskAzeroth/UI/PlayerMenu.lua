-- luacheck: read globals MenuUtil ChatFrameUtil ChatFrame_SendTell StaticPopup_Show ACCEPT CANCEL
-- luacheck: globals StaticPopupDialogs
local _, ns = ...

-- Context menu for a player (right click on a name): favourite, ignore,
-- note, whisper and, on answers to own questions, "helped me".
local PlayerMenu = {}
ns.PlayerMenu = PlayerMenu

local L = ns.L
local Players = ns.Players
local Util = ns.Util

local noteTarget

StaticPopupDialogs.ASKAZEROTH_NOTE = {
	text = L.PLAYER_NOTE_PROMPT,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = true,
	maxLetters = Players.NOTE_MAX,
	OnShow = function(self)
		local box = self.GetEditBox and self:GetEditBox() or self.editBox
		box:SetText(noteTarget and Players.GetNote(noteTarget) or "")
		box:HighlightText()
	end,
	OnAccept = function(self)
		local box = self.GetEditBox and self:GetEditBox() or self.editBox
		if noteTarget then
			Players.SetNote(noteTarget, box:GetText())
		end
	end,
	EditBoxOnEnterPressed = function(box)
		local popup = box:GetParent()
		if noteTarget then
			Players.SetNote(noteTarget, box:GetText())
		end
		popup:Hide()
	end,
	EditBoxOnEscapePressed = function(box)
		box:GetParent():Hide()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}

function PlayerMenu.EditNote(name)
	noteTarget = name
	StaticPopup_Show("ASKAZEROTH_NOTE", Util.EscapeText(Util.ShortName(name)))
end

function PlayerMenu.Whisper(name)
	if ChatFrameUtil and ChatFrameUtil.SendTell then
		ChatFrameUtil.SendTell(name)
	elseif ChatFrame_SendTell then
		ChatFrame_SendTell(name)
	end
end

-- answer: set when the menu is for an answer to the player's own question,
-- to offer "helped me".
function PlayerMenu.Open(owner, name, answer)
	if not name or name == ns:GetPlayerFullName() or not (MenuUtil and MenuUtil.CreateContextMenu) then
		return
	end
	MenuUtil.CreateContextMenu(owner, function(_, root)
		root:CreateTitle(Util.EscapeText(Util.ShortName(name)))
		if answer then
			local done = Players.HasHelped(answer.id)
			local button = root:CreateButton(done and L.PLAYER_HELPED_DONE or L.PLAYER_HELPED, function()
				Players.MarkHelped(name, answer.id)
			end)
			if done then
				button:SetEnabled(false)
			end
		end
		root:CreateCheckbox(L.PLAYER_FAVORITE, function()
			return Players.IsFavorite(name)
		end, function()
			Players.SetFavorite(name, not Players.IsFavorite(name))
		end)
		root:CreateCheckbox(L.PLAYER_IGNORE, function()
			return Players.IsIgnored(name)
		end, function()
			Players.SetIgnored(name, not Players.IsIgnored(name))
		end)
		root:CreateButton(L.PLAYER_NOTE, function()
			PlayerMenu.EditNote(name)
		end)
		root:CreateButton(L.PLAYER_WHISPER, function()
			PlayerMenu.Whisper(name)
		end)
	end)
end
