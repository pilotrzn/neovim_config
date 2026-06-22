local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Mouse
opt.mouse = "a"
opt.mousefocus = true

-- Other
opt.scrolloff = 15
opt.wrap = false
opt.termguicolors = true
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.guicursor = ""
opt.colorcolumn = "120"

-- clipboard
opt.clipboard = "unnamedplus"

vim.opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
} --  Fillcharts
