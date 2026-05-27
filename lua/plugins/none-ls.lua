return {
    "nvimtools/none-ls.nvim",                 -- Основной плагин none-ls
    dependencies = {
        "nvim-lua/plenary.nvim",              -- Обязательная зависимость
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- Форматтер для Jinja2
                null_ls.builtins.formatting.djlint,
                -- Линтер для Jinja2
                null_ls.builtins.diagnostics.djlint,
            },
            on_attach = function(client, bufnr)
                -- Опционально: отключаем форматирование через LSP для Jinja,
                -- чтобы использовать только djlint
                if client.name == "null-ls" then
                    vim.keymap.set("n", "<leader>f", function()
                        vim.lsp.buf.format({ async = true })
                    end, { buffer = bufnr })
                end
            end,
        })
    end,
}
