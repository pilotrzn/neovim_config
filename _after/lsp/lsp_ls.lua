return {
    -- Команда для запуска сервера. Mason автоматически добавит путь в `PATH`.
    cmd = { 'lua-language-server' },
    -- Типы файлов, для которых будет активироваться этот LSP сервер.
    filetypes = { 'lua' },
    -- Маркеры для определения корня проекта.
    root_markers = {
        '.luarc.json',
        '.luarc.jsonc',
        ',luacheckrc',
        '.git' },
    -- Настройки самого сервера.
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT', -- Версия Lua, используемая в Neovim
            },
            diagnostics = {
                -- Отключаем предупреждение о глобальной переменной 'vim'
                globals = { 'vim' },
            },
            workspace = {
                -- Указываем серверу, где искать библиотеки Neovim
                library = {
                    vim.env.VIMRUNTIME,
                    -- Путь к библиотеке luv (для асинхронных функций)
                    '${3rd}/luv/library',
                },
                -- Отключаем проверку сторонних библиотек, чтобы избежать ошибок
                checkThirdParty = false,
            },
            telemetry = {
                enable = false, -- Отключаем телеметрию
            },
        },
    },
}
