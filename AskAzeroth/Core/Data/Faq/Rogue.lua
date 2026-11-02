local _, ns = ...

-- FAQ: Rogue. See Core/Faq.lua for the format.
ns.Faq.Add("rogue", {
	{
		id = "rogue-energy-combo",
		de = {
			q = "Wie funktionieren Energie und Combopunkte?",
			a = "Schurken nutzen Energie, die sich schnell von selbst auffüllt. Angriffe wie „Finsterer Stoß“ geben Combopunkte auf deinem Ziel, bis zu fünf. Finishing-Moves wie „Ausweiden“ verbrauchen alle Punkte und werden mit jedem Punkt stärker.",
		},
		en = {
			q = "How do energy and combo points work?",
			a = "Rogues use energy, which refills quickly on its own. Attacks like Sinister Strike add combo points on your target, up to five. Finishers like Eviscerate spend all points and get stronger with each one.",
		},
	},
	{
		id = "rogue-stealth",
		de = {
			q = "Wie funktioniert Verstohlenheit?",
			a = "In Verstohlenheit bist du fast unsichtbar und bewegst dich langsamer. Gegner bemerken dich erst, wenn du sehr nah kommst oder vor ihnen stehst. Aus der Verstohlenheit heraus hast du besondere Eröffnungen wie „Hinterhalt“ oder „Fieser Trick“.",
		},
		en = {
			q = "How does Stealth work?",
			a = "In Stealth you are almost invisible and move more slowly. Enemies only notice you when you get very close or stand in front of them. From Stealth you have special openers such as Ambush or Cheap Shot.",
		},
	},
	{
		id = "rogue-opener",
		de = {
			q = "Wie fange ich einen Kampf als Schurke an?",
			a = "Schleich dich in Verstohlenheit hinter den Gegner. Mit einem Dolch eröffnest du mit „Hinterhalt“ für viel Schaden, sonst mit „Fieser Trick“, der den Gegner betäubt. Danach baust du Combopunkte auf und beendest den Kampf mit einem Finishing-Move.",
		},
		en = {
			q = "How do I start a fight as a rogue?",
			a = "Sneak up behind the enemy in Stealth. With a dagger, open with Ambush for big damage; otherwise with Cheap Shot, which stuns the enemy. Then build combo points and finish with a finisher.",
		},
	},
	{
		id = "rogue-dagger-sword",
		de = {
			q = "Dolche oder Schwerter?",
			a = "Dolche passen zu „Hinterhalt“ und „Meucheln“, die nur von hinten gehen. Schwerter, Streitkolben und Faustwaffen sind mit „Finsterer Stoß“ einfacher, weil du auch von vorn Schaden machst. Allein von vorn kämpfend ist eine langsame, starke Waffe in der Haupthand meist besser.",
		},
		en = {
			q = "Daggers or swords?",
			a = "Daggers suit Ambush and Backstab, which only work from behind. Swords, maces and fist weapons are easier with Sinister Strike because you deal damage from the front too. When fighting alone from the front, a slow, strong main-hand weapon is usually better.",
		},
	},
	{
		id = "rogue-backstab",
		de = {
			q = "Warum geht „Meucheln“ nicht?",
			a = "„Meucheln“ braucht einen Dolch in der Haupthand und muss von hinten kommen. Greift dich ein Gegner allein an, schaut er dich an, dann nutz „Finsterer Stoß“. In der Gruppe, während der Tank den Gegner hält, ist Meucheln sehr stark.",
		},
		en = {
			q = "Why does Backstab not work?",
			a = "Backstab needs a dagger in your main hand and must come from behind. When an enemy is fighting you alone, it faces you, so use Sinister Strike. In a group, while the tank holds the enemy, Backstab is very strong.",
		},
	},
	{
		id = "rogue-slice-and-dice",
		de = {
			q = "Wann nutze ich „Zerhäckseln“?",
			a = "„Zerhäckseln“ erhöht dein Angriffstempo für eine Weile und wird mit mehr Combopunkten länger. In längeren Kämpfen lohnt es sich fast immer; gegen schwache Gegner reicht „Ausweiden“.",
		},
		en = {
			q = "When do I use Slice and Dice?",
			a = "Slice and Dice increases your attack speed for a while and lasts longer with more combo points. It is almost always worth it in longer fights; against weak enemies, Eviscerate is enough.",
		},
	},
	{
		id = "rogue-kick",
		de = {
			q = "Wie unterbreche ich Zauber?",
			a = "Mit „Tritt“: Er unterbricht einen Zauber, und der Gegner kann diese Zauberschule kurz nicht nutzen. Halte ihn für Heilzauber und gefährliche Angriffszauber bereit, besonders in Dungeons.",
		},
		en = {
			q = "How do I interrupt spells?",
			a = "With Kick: it interrupts a cast, and the enemy cannot use that school of magic for a short time. Keep it ready for heals and dangerous damage spells, especially in dungeons.",
		},
	},
	{
		id = "rogue-sap",
		de = {
			q = "Was ist „Kopfnuss“?",
			a = "„Kopfnuss“ setzt einen Humanoiden außerhalb des Kampfes eine Weile außer Gefecht. Du kannst so einen Gegner aus einer Gruppe ausschalten und die anderen einzeln bekämpfen. Schaden weckt ihn wieder auf. In Dungeons ist das eine wichtige Aufgabe für Schurken.",
		},
		en = {
			q = "What is Sap?",
			a = "Sap incapacitates a humanoid out of combat for a while. That lets you take one enemy out of a group and fight the others one at a time. Damage wakes it up. In dungeons this is an important job for rogues.",
		},
	},
	{
		id = "rogue-escape",
		de = {
			q = "Wie komme ich als Schurke aus einem verlorenen Kampf?",
			a = "„Entrinnen“ lässt dich viele Angriffe ausweichen, „Sprinten“ macht dich kurz sehr schnell, und „Verschwinden“ bringt dich zurück in die Verstohlenheit. „Solarplexus“ und „Blenden“ verschaffen dir Zeit für einen Verband.",
		},
		en = {
			q = "How do I get out of a lost fight as a rogue?",
			a = "Evasion lets you dodge many attacks, Sprint makes you very fast for a moment, and Vanish puts you back into Stealth. Gouge and Blind buy you time for a bandage.",
		},
	},
	{
		id = "rogue-heal",
		de = {
			q = "Wie heile ich mich als Schurke?",
			a = "Gar nicht mit Zaubern: Iss nach den Kämpfen und lern Erste Hilfe, damit du dich mit Verbänden heilen kannst. Im Kampf hilft „Solarplexus“, um Zeit für einen Verband zu gewinnen.",
		},
		en = {
			q = "How do I heal myself as a rogue?",
			a = "Not with spells: eat after fights and learn first aid so you can heal with bandages. In combat, Gouge buys you time for a bandage.",
		},
	},
	{
		id = "rogue-poisons",
		de = {
			q = "Wie bekomme ich Gifte?",
			a = "Gifte lernst du über eine Klassenquest um Stufe 20, dein Schurkenlehrer schickt dich los. Danach stellst du sie selbst her und legst sie auf deine Waffen, zum Beispiel „Sofort wirkendes Gift“ für Schaden. Die Zutaten verkaufen Giftverkäufer.",
		},
		en = {
			q = "How do I get poisons?",
			a = "You learn poisons from a class quest around level 20; your rogue trainer sends you off. After that you make them yourself and apply them to your weapons, for example Instant Poison for damage. Poison vendors sell the ingredients.",
		},
	},
	{
		id = "rogue-lockpicking",
		de = {
			q = "Wie öffne ich Schließkassetten?",
			a = "Mit „Schlossknacken“. Schurken lernen es über eine Quest und steigern es, indem sie Schlösser öffnen. In Schließkassetten von Gegnern steckt oft Gold oder Beute; du kannst auch für andere Spieler Kassetten öffnen.",
		},
		en = {
			q = "How do I open lockboxes?",
			a = "With Pick Lock. Rogues learn it from a quest and raise it by opening locks. Lockboxes from enemies often contain gold or loot; you can open boxes for other players too.",
		},
	},
	{
		id = "rogue-pickpocket",
		de = {
			q = "Was bringt Taschendiebstahl?",
			a = "In Verstohlenheit kannst du Humanoide bestehlen, ohne dass sie es merken. Du bekommst etwas Gold und manchmal Schließkassetten. Es lohnt sich, bevor du den Gegner angreifst.",
		},
		en = {
			q = "What is Pick Pocket good for?",
			a = "In Stealth you can rob humanoids without them noticing. You get some gold and sometimes lockboxes. It is worth doing before you attack.",
		},
	},
	{
		id = "rogue-stun-chain",
		de = {
			q = "Wie halte ich einen Gegner betäubt?",
			a = "Eröffne mit „Fieser Trick“, bau Combopunkte auf und setz dann „Nierenhieb“, einen Finishing-Move, der wieder betäubt. So bekommt der Gegner kaum einen Schlag ab. Gegen Spieler und Bosse wirken Betäubungen kürzer oder gar nicht.",
		},
		en = {
			q = "How do I keep an enemy stunned?",
			a = "Open with Cheap Shot, build combo points, then use Kidney Shot, a finisher that stuns again. That way the enemy barely gets a hit in. Stuns are shorter or do not work against players and bosses.",
		},
	},
	{
		id = "rogue-threat",
		de = {
			q = "Im Dungeon greifen mich die Gegner an. Was tun?",
			a = "Du machst mehr Bedrohung als der Tank. Greif erst an, wenn der Tank den Gegner ein paar Sekunden hatte, nutz „Finte“, um Bedrohung zu senken, und im Notfall „Entrinnen“ oder „Verschwinden“.",
		},
		en = {
			q = "Enemies attack me in dungeons. What do I do?",
			a = "You are creating more threat than the tank. Only attack once the tank has had the enemy for a few seconds, use Feint to lower your threat, and Evasion or Vanish in an emergency.",
		},
	},
	{
		id = "rogue-stats",
		de = {
			q = "Welche Werte sind für Schurken wichtig?",
			a = "Beweglichkeit vor allem: mehr Schaden, kritische Treffer und Ausweichen. Dazu Stärke für Angriffskraft und Ausdauer für Gesundheit. Intelligenz und Willenskraft brauchst du nicht.",
		},
		en = {
			q = "Which stats matter for rogues?",
			a = "Agility above all: more damage, critical strikes and dodge. Then strength for attack power and stamina for health. You do not need intellect or spirit.",
		},
	},
	{
		id = "rogue-armor",
		de = {
			q = "Welche Rüstung tragen Schurken?",
			a = "Leder. Du kannst zwei Waffen gleichzeitig tragen; die Nebenhand macht weniger Schaden, lohnt sich aber trotzdem. Wurfwaffen, Bögen oder Schusswaffen kommen in den Fernkampfplatz.",
		},
		en = {
			q = "What armour do rogues wear?",
			a = "Leather. You can wield two weapons at once; the off hand deals less damage but is still worth it. Thrown weapons, bows or guns go into the ranged slot.",
		},
	},
	{
		id = "rogue-talents",
		de = {
			q = "Welche Talentbäume haben Schurken?",
			a = "Meucheln verbessert Finishing-Moves und Gifte, Kampf macht dich im offenen Kampf stark und ist beim Leveln sehr beliebt, Täuschung verbessert Verstohlenheit und Eröffnungen. Für den Einstieg ist Kampf mit Schwert oder Streitkolben am einfachsten.",
		},
		en = {
			q = "Which talent trees do rogues have?",
			a = "Assassination improves finishers and poisons, Combat makes you strong in open fights and is very popular for levelling, Subtlety improves Stealth and openers. Combat with a sword or mace is the easiest start.",
		},
	},
	{
		id = "rogue-distract",
		de = {
			q = "Wie komme ich an einem Gegner vorbei?",
			a = "„Ablenken“ lässt Gegner kurz in eine andere Richtung schauen, sodass du dich in Verstohlenheit vorbeischleichen kannst. Für Humanoide geht auch „Kopfnuss“. So erreichst du Questziele, ohne jeden Gegner zu bekämpfen.",
		},
		en = {
			q = "How do I get past an enemy?",
			a = "Distract makes enemies look in another direction for a moment, so you can sneak past in Stealth. Sap works on humanoids. That way you reach quest objectives without fighting every enemy.",
		},
	},
})
