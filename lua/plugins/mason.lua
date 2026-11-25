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
					"ansiblels", -- Ansible
					"yamlls", -- YAML (поддержка схем)
					"bashls", -- Bash
					"marksman", -- Markdown
				},
				-- Линтеры/форматтеры (ruff, stylua, prettier, ...) ставятся
				-- через mason-tool-installer (см. plugins/mason-tool-installer.lua)
			})
		end,
	},
}
