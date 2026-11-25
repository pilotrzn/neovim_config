return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				python = { "ruff_format" }, -- или "black"
				yaml = {}, -- или "prettier"
				json = { "fixjson" },
				markdown = { "prettier" },
				lua = { "stylua" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				vue = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
			},
            format_on_save = function (bufnr)
                local ft = vim.bo[bufnr].filetype
                if ft == 'yaml' or ft == 'jinja' or ft == 'j2' then return nil end
               return {lsp_format = 'fallback', timeout_ms = 500 } 
            end

			-- format_on_save = {
			-- 	lsp_fallback = function(bufnr)
			-- 		-- эта функция возвращает true для всех файлов, кроме yaml
			-- 		local ft = vim.bo[bufnr].filetype
			-- 		return ft ~= "yaml" or ft ~= "j2"
			-- 	end,
			-- 	timeout_ms = 500,
			-- },
		})
	end,
}
