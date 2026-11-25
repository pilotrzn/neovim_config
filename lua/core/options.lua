local opt = vim.opt
-- Добавить путь к бинарникам Mason
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin" .. ":" .. vim.env.PATH
-- Line numbers
opt.number = true
opt.relativenumber = true

vim.api.nvim_set_hl(0, "TermCursor", { bg = "#ffffff" })

-- Indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Mouse
opt.mouse = "a"

-- Other
opt.scrolloff = 15
opt.wrap = false
opt.termguicolors = true
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.signcolumn = "yes"
opt.guicursor = ""
opt.colorcolumn = "120"

-- clipboard
opt.clipboard = "unnamedplus"

vim.opt.fillchars = {
	vert = "▐",
	horiz = "━",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
	horizup = "┻", -- углы для пересечений
	horizdown = "┳",
	vertleft = "┨",
	vertright = "┣",
	verthoriz = "╋",
} --  Fillcharts

-- Прозрачные плавающие окна (переприменяем после смены цветовой схемы)
local function transparent_floats()
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
end
vim.api.nvim_create_autocmd("ColorScheme", { callback = transparent_floats })
transparent_floats()

-- Иконки в signcolumn для диагностик
local severity = vim.diagnostic.severity
vim.diagnostic.config({
	signs = {
		text = {
			[severity.ERROR] = " ",
			[severity.WARN] = " ",
			[severity.INFO] = " ",
			[severity.HINT] = " ",
		},
	},
})
