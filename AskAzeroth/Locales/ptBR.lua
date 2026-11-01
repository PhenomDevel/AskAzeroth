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
L.PAGE_PINNED = "Fixadas"
L.PAGE_PLAYERS = "Jogadores"
L.PAGE_FAQ = "FAQ"
L.PAGE_SETTINGS = "Configurações"
L.PAGE_COMING_SOON = "Chega em uma versão futura."
L.PAGE_MY_QUESTIONS_TEXT = "Tudo o que você perguntou, com todas as respostas, mesmo depois de sumir da lista pública."
L.PAGE_PINNED_TEXT = "Respostas que você fixou, junto com a pergunta. Ficam no seu computador e nunca expiram, mesmo depois que a pergunta sumir."
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

-- Questions page
L.QUEUE_SEARCH = "Buscar…"
L.QUEUE_ALL = "Todas"
L.QUEUE_ASK = "Fazer uma pergunta"
L.QUEUE_EMPTY = "Ainda não há perguntas. Faça a primeira!"
L.QUEUE_NO_MATCH = "Nenhuma pergunta corresponde ao filtro."

-- Thread
L.THREAD_NONE = "Escolha uma pergunta à esquerda para ler as respostas."
L.THREAD_SEND = "Enviar"
L.THREAD_SOLVE = "Marcar como resolvida"
L.THREAD_SOLVE_TIP = "Sua pergunta teve a resposta que você precisava. Ela some 10 minutos depois."
L.THREAD_WITHDRAW = "Retirar"
L.THREAD_WITHDRAW_TIP = "Remove sua pergunta para todos."
L.THREAD_WITHDRAW_CONFIRM = "Retirar sua pergunta para todos?"
L.THREAD_OPEN_EXPIRES = "Some em %d min se ninguém responder."
L.THREAD_ANSWERED_EXPIRES = "Some em %d min sem uma nova resposta."
L.THREAD_SOLVED_EXPIRES = "Resolvida – some em %d min."

-- Formatting
L.LEVEL_SHORT = "Nível %d"
L.AGO_NOW = "agora mesmo"
L.AGO_MINUTES = "há %d min"
L.AGO_HOURS = "há %d h"

-- Status
L.STATUS_OPEN = "aberta"
L.STATUS_ANSWER_ONE = "1 resposta"
L.STATUS_ANSWERS = "%d respostas"
L.STATUS_SOLVED = "resolvida"
L.STATUS_CLOSED = "fechada"

-- Ask dialog
L.ASK_TITLE = "Fazer uma pergunta"
L.ASK_CATEGORY = "Categoria"
L.ASK_SUMMARY = "Resumo"
L.ASK_DETAILS = "Detalhes (opcional)"
L.ASK_LANGUAGE = "Idioma"
L.ASK_CONTEXT = "Enviado junto: %s"
L.ASK_SUBMIT = "Perguntar"
L.ASK_CANCEL = "Cancelar"

-- Reasons
L.REASON_RATE = "Você pode fazer uma pergunta por minuto. Aguarde um pouco."
L.REASON_OPEN_LIMIT = "Você já tem 3 perguntas abertas. Marque uma como resolvida ou retire-a primeiro."
L.REASON_TITLE = "O resumo está vazio, longo demais ou tem caracteres inválidos."
L.REASON_BODY = "Os detalhes estão longos demais ou têm caracteres inválidos."
L.REASON_TEXT = "A resposta está vazia, longa demais ou tem caracteres inválidos."
L.REASON_LANG = "Este idioma não está selecionado."
L.REASON_CATEGORY = "Escolha uma categoria."
L.REASON_SENDER = "O nome do seu personagem ainda não é conhecido. Tente de novo em instantes."
L.REASON_UNKNOWN = "Esta pergunta não existe mais."
L.REASON_NOT_AUTHOR = "Só quem perguntou pode fazer isso."
L.REASON_DUPLICATE = "Já feito."
L.REASON_ANSWERS_FULL = "Esta pergunta tem respostas demais."
L.REASON_TIME = "O horário não confere."
L.REASON_OTHER = "Não é possível (%s)."

-- Players
L.QUEUE_IGNORED = "%d perguntas de jogadores ignorados"
L.THREAD_PLAYER_TIP = "Clique direito: opções do jogador"
L.THREAD_IGNORED_TIP = "Resposta de um jogador ignorado. Clique para mostrar."
L.THREAD_IGNORED_ANSWER = "Resposta de um jogador ignorado (clique para mostrar)"
L.PLAYER_NOTE_PROMPT = "Nota sobre %s:"
L.PLAYER_HELPED = "Me ajudou"
L.PLAYER_HELPED_DONE = "Contada como útil"
L.PLAYER_FAVORITE = "Favorito"
L.PLAYER_IGNORE = "Ignorar"
L.PLAYER_NOTE = "Nota…"
L.PLAYER_WHISPER = "Sussurrar"
L.PLAYERS_FAVORITES = "Favoritos"
L.PLAYERS_IGNORED = "Ignorados"
L.PLAYERS_RECENT = "Vistos recentemente"
L.PLAYERS_FAVORITES_EMPTY = "Ainda não há favoritos. Clique com o botão direito em um nome numa pergunta ou resposta para adicionar."
L.PLAYERS_IGNORED_EMPTY = "Você não ignora ninguém."
L.PLAYERS_RECENT_EMPTY = "Ninguém visto nesta sessão."
L.PLAYERS_HINT = "Clique num jogador para opções"
L.PLAYERS_HELPED = "ajudou você %d×"
L.PLAYERS_NOTE = "nota: %s"
L.PLAYERS_IS_IGNORED = "ignorado"

-- Categories
L.CAT_QUEST = "Missão"
L.CAT_CLASS = "Classe"
L.CAT_DUNGEON = "Masmorra"
L.CAT_PROF = "Profissão"
L.CAT_UI = "Interface"
L.CAT_MISC = "Outros"
