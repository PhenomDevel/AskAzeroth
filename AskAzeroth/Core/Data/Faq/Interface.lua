local _, ns = ...

-- FAQ: Interface and key bindings. See Core/Faq.lua for the format.
ns.Faq.Add("ui", {
	{
		id = "ui-keys",
		de = {
			q = "Welche Tasten öffnen die wichtigsten Fenster?",
			a = "Standardmäßig: M Weltkarte, L Questlog, P Zauberbuch, N Talente, C Charakter, B Taschen, O Kontakte und Gilde. Ändern kannst du sie im Spielmenü unter Tastaturbelegung.",
		},
		en = {
			q = "Which keys open the most important windows?",
			a = "By default: M world map, L quest log, P spellbook, N talents, C character, B bags, O friends and guild. You can change them under Key Bindings in the game menu.",
		},
	},
	{
		id = "ui-addons",
		de = {
			q = "Wie installiere ich Addons?",
			a = "Nutze die CurseForge- oder Wago-App oder entpack den Addon-Ordner in den Ordner AddOns deiner WoW-Forever-Installation. In der Charakterauswahl zeigt der Knopf „AddOns“, welche Addons aktiv sind.",
		},
		en = {
			q = "How do I install addons?",
			a = "Use the CurseForge or Wago app, or unpack the addon folder into the AddOns folder of the WoW: Forever installation. On the character selection screen the AddOns button shows which addons are enabled.",
		},
	},
	{
		id = "ui-reload",
		de = {
			q = "Meine Oberfläche spinnt. Was kann ich tun?",
			a = "Gib /reload ein, um die Oberfläche neu zu laden; das behebt die meisten Fehler. Wenn ein Addon Fehler verursacht, schalte es in der Charakterauswahl unter „AddOns“ ab und versuch es noch einmal.",
		},
		en = {
			q = "My interface is acting up. What can I do?",
			a = "Type /reload to reload the interface; that fixes most glitches. If an addon causes errors, turn it off on the character selection screen under AddOns and try again.",
		},
	},
})
