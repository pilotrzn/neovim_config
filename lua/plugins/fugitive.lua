-- ~/.config/nvim/lua/plugins/fugitive.lua
return {
	{
		"tpope/vim-fugitive",
		keys = {
			-- Команды Fugitive
			{ "<leader>gs", "<cmd>Git<CR>", desc = "Git status window" },
			{ "<leader>gb", "<cmd>Git blame<CR>", desc = "Git blame" },
			{ "<leader>gd", "<cmd>Gvdiffsplit<CR>", desc = "Git diff" },
			{ "<leader>gl", "<cmd>Git log<CR>", desc = "Git log" },
			{ "<leader>gp", "<cmd>Git push<CR>", desc = "Git push" },
			{ "<leader>gf", "<cmd>Git fetch<CR>", desc = "Git fetch" },
			{ "<leader>gc", "<cmd>Git commit --verbose<CR>", desc = "Git commit" },
			{ "<leader>ga", "<cmd>Git add %<CR>", desc = "Git add current file" },
			{ "<leader>gA", "<cmd>Git add .<CR>", desc = "Git add all files" },
		},
		config = function()
			-- Ставим кастомные маппинги для окна `:Git`
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "fugitive",
				callback = function()
					vim.keymap.set("n", "gs", "<cmd>Git<CR>", { buffer = true, desc = "Git status" })
					vim.keymap.set("n", "gq", "<cmd>q<CR>", { buffer = true, desc = "Close fugitive" })
					vim.keymap.set("n", "ga", "<cmd>Git add %<CR>", { buffer = true, desc = "Git add" })
					vim.keymap.set("n", "gc", "<cmd>Git commit<CR>", { buffer = true, desc = "Git commit" })
					vim.keymap.set("n", "gp", "<cmd>Git push<CR>", { buffer = true, desc = "Git push" })
					vim.keymap.set("n", "gl", "<cmd>Git pull<CR>", { buffer = true, desc = "Git pull" })
					vim.keymap.set("n", "gd", "<cmd>Gvdiffsplit<CR>", { buffer = true, desc = "Git diff" })
				end,
			})
		end,
	},
}
