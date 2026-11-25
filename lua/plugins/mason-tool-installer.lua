-- Установка форматтеров/линтеров через Mason (для conform.nvim, nvim-lint, none-ls)
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- Форматтеры (conform.nvim)
				"stylua",
				"prettier",
				"fixjson",
				-- Линтеры (nvim-lint) и форматтер/линтер Jinja (none-ls / djlint)
				"ruff",
				"djlint",
				"yamllint",
				"markdownlint-cli2",
				"eslint_d",
			},
			run_on_start = true,
		})
	end,
}
