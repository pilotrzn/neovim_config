-- Кэширование Lua-модулей (ускоряет старт)
vim.loader.enable()

require("core.options")
require("core.keymaps")
require("core.lazy")

require("lsp")
