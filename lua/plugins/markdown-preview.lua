return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	--	build = function()
	--		vim.fn["mkdp#util#install"]()
	--	end,
	-- Здесь прописываем глобальные переменные для конфигурации плагина
	init = function()
		-- 1. Настройки автостарта и авто-закрытия
		vim.g.mkdp_auto_start = 0 -- Автоматически открывать предпросмотр при входе в markdown файл[reference:1]
		vim.g.mkdp_auto_close = 0 -- Автоматически закрывать предпросмотр при выходе из markdown файла[reference:2]
		vim.g.mkdp_refresh_slow = 1 -- Обновлять в реальном времени (если поставить 1, то только при сохранении)[reference:3]

		-- 2. Настройки браузера (!!! ВАЖНО !!!)
		-- Укажи путь к своему браузеру, чтобы плагин точно его нашёл и открыл
		vim.g.mkdp_browser = "/usr/bin/yandex-browser-stable" -- Для Google Chrome
		-- vim.g.mkdp_browser = "/usr/bin/firefox"             -- Для Firefox
		-- vim.g.mkdp_browser = "/usr/bin/brave-browser"       -- Для Brave
		-- vim.g.mkdp_browser = "open -a Safari"               -- Для macOS

		-- 3. Настройки сети (если работаешь удалённо)
		-- vim.g.mkdp_open_to_the_world = 1     -- Открыть доступ для всех устройств в сети[reference:4]
		-- vim.g.mkdp_open_ip = "127.0.0.1" -- Указать конкретный IP для доступа[reference:5]

		-- 4. Настройки темы
		vim.g.mkdp_theme = "dark" -- Выбрать тёмную тему (доступны 'light' и 'dark')[reference:6]
		-- Если хочешь использовать свои стили, укажи абсолютные пути к CSS файлам
		-- vim.g.mkdp_markdown_css = '/home/user/путь/к/твоему/стилю.css'[reference:7]
		-- vim.g.mkdp_highlight_css = '/home/user/путь/к/подсветке/синтаксиса.css'[reference:8]

		-- 5. Дополнительные настройки
		vim.g.mkdp_echo_preview_url = 1 -- Показывать URL предпросмотра в командной строке при запуске[reference:9]
		vim.g.mkdp_command_for_global = 0 -- Не делать команды предпросмотра глобальными (работают только для .md файлов)[reference:10]
	end,
}
