local _, ns = ...

if GetLocale() ~= "ptBR" then
	return
end

local L = ns.L

-- General
L.ADDON_LOADED = "Versão %s carregada. Digite |cffffd100/aa|r para ver os comandos."
L.UNKNOWN_COMMAND = "Comando desconhecido |cffffd100%s|r."
L.HELP_HEADER = "Comandos:"
L.YES = "sim"
L.NO = "não"

-- Window
L.PAGE_QUESTIONS = "Perguntas"
L.PAGE_MY_QUESTIONS = "Minhas perguntas"
L.PAGE_PLAYERS = "Jogadores"
L.PAGE_FAQ = "FAQ"
L.PAGE_SETTINGS = "Configurações"
L.PAGE_COMING_SOON = "Chega em uma versão futura."
L.PAGE_QUESTIONS_TEXT = "Perguntas abertas nos seus idiomas, com filtros por categoria e uma busca. Escolha uma para ler o tópico e responder."
L.PAGE_MY_QUESTIONS_TEXT = "Tudo o que você perguntou, com todas as respostas, mesmo depois de sumir da lista pública."
L.PAGE_PLAYERS_TEXT = "Jogadores que você marcou como favoritos ou ignora, com suas notas e quantas vezes eles ajudaram você. Salvo apenas no seu computador."
L.PAGE_FAQ_TEXT = "Respostas para perguntas comuns de jogadores novos."

-- Status line
L.STATUS_LOCKDOWN = "Mensagens de bate-papo bloqueadas (encontro)"
L.STATUS_MENTOR = "Modo mentor"

-- Settings
L.SETTINGS_GENERAL = "Geral"
L.SETTING_MENTOR = "Modo mentor"
L.SETTING_MENTOR_TIP = "Você quer ajudar: recebe avisos de novas perguntas (a partir de uma versão futura)."
L.SETTING_MINIMAP = "Mostrar botão do minimapa"
L.SETTING_RETENTION = "Guardar minhas perguntas"
L.SETTING_RETENTION_TIP = "Por quanto tempo suas perguntas ficam em \"Minhas perguntas\"."
L.RETENTION_FOREVER = "Sempre"
L.RETENTION_DAYS = "%d dias"
L.SETTINGS_LANGUAGES = "Idiomas"
L.SETTINGS_LANGUAGES_TEXT = "As perguntas passam por um canal de bate-papo oculto por idioma. Cada idioma ocupa um dos seus espaços de canal."
L.SETTING_LANGUAGE_LAST = "Pelo menos um idioma precisa continuar selecionado."
L.SETTING_ASK_LANGUAGE = "Idioma das novas perguntas"

-- Minimap button
L.MINIMAP_LANGUAGES = "Idiomas: %s"
L.MINIMAP_LEFT = "Clique esquerdo: abrir ou fechar"
L.MINIMAP_RIGHT = "Clique direito: configurações"

-- Commands
L.CMD_SHOW = "abrir a janela"
L.CMD_SETTINGS = "abrir as configurações"
L.CMD_MINIMAP = "mostrar ou ocultar o botão do minimapa"
L.CMD_MINIMAP_HIDDEN = "Botão do minimapa oculto. |cffffd100/aa minimap|r mostra de novo."
L.CMD_MINIMAP_SHOWN = "Botão do minimapa visível."
