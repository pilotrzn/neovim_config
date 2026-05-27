return {
    "nvim-treesitter/nvim-treesitter",      -- Правильный основной репозиторий
    branch = "master",                      -- Ветка для совместимости с Nvim 0.11
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "python",
                "yaml",
                "lua",
                "vim",
                "bash",
                "json",
                "jinja",
                "markdown"
            },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
