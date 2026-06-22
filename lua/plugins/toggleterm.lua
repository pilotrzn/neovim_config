return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		config = function()
			require("toggleterm").setup({
				--				size = 20,
				--				direction = "horizontal",
				open_mapping = [[<c-\>]],
				direction = "float",
				float_opts = {
					border = "single",
					width = function()
						return math.ceil(vim.o.columns * 0.85)
					end,
					height = function()
						return math.ceil(vim.o.lines * 0.85)
					end,
				},
			})
			function _G.set_terminal_keymaps()
				local opts = { buffer = 0 }
				local map = vim.keymap.set
				map("t", "<esc>", [[<C-\><C-n>]], opts)
				map("t", "jj", [[<C-\><C-n>]], opts)
				map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
				map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
				map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
				map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
				map("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
			end
			-- if you only want these mappings for toggle term use term://*toggleterm#* instead
			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
