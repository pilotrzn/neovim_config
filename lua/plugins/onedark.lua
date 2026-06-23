return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "deep",
			transparent = true,
			highlights = {
				LineNr = {
					fg = "#b0b8c0",
				},
				CursorLineNr = {
					fg = "#ffffff",
					bold = true,
				},
				LineNrAbove = {
					fg = "#ffffff",
					bold = true,
				},
				LineNrBelow = {
					fg = "#ffffff",
					bold = true,
				},
				WinSeparator = { fg = "#88ccff" }, -- белый
				NvimTreeWinSeparator = { fg = "#ffffff", bold = true },
			},
		})
		require("onedark").load()
	end,
}
