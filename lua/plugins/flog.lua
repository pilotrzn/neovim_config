return {
	"rbong/vim-flog",
	lazy = true,
	cmd = { "Flog", "Flogsplit", "Floggit" },
	dependencies = {
		{ "tpope/vim-fugitive", lazy = false }, -- Фундамент, всегда должен быть загружен
	},
	-- Дополнительные настройки vim-flog (опционально)
	-- init = function()
	--   vim.g.flog_enable_extended_chars = 1 -- Для улучшенной графики в Kitty
	-- end,
}
