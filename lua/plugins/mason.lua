return {
    -- Mason: установка LSP-серверов, линтеров, форматтеров
    {
        "williamboman/mason.nvim",
        -- build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end,
    },
    -- Автоматическая связь между Mason и lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "pyright",
                    "lua_ls",
                    "jinja_lsp",
                    "ansiblels",            -- Ansible
--                    "ansible-lint",            -- Ansible
--                     "yamlls",               -- YAML (поддержка схем)
--                    "ruff",                 -- линтер/форматтер Python (опционально)
                },
                automatic_installation = true,
            })
        end,
    },
}
