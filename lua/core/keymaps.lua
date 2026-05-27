local map = vim.keymap.set

local opts = { noremap = true, silent = true }

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffer
map("n", "<leader>w", ":w<CR>", { desc = "Сохранить файл(буффер)" })
map("i", "jj", "<Esc>", { desc = "Выход из режима вставки" })
map("n", "<leader>bd", ":bp | bd #<CR>", { desc = "Закрыть буфер и перейти на предыдущий" })

-- Navigation
map("n", "<C-j>", "<C-w>j", { desc = "Переключить на нижнее окно" })
map("n", "<C-k>", "<C-w>k", { desc = "Переключить на верхее окно" })
map("n", "<C-h>", "<C-w>h", { desc = "Переключить на правое окно" })
map("n", "<C-l>", "<C-w>l", { desc = "Переключить на левое окно" })

-- registers
map("n", "<leader>r", ":registers<CR>", { desc = "Показать регистры" })

-- moves
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Copy to global clioboard
map("n", "<leader>Y", [["+Y]], opts)

-- Splits
map("n", "|", ":vsplit<CR>", { desc = "Разделить вертикально" })
map("n", "\\", ":split<CR>", { desc = "Разделить горизонтально" })

-- Close
 map("n", "<leader>q", ":q<CR>", { desc = "Close file" })

-- Neo-tree
map("n", "<leader>e", ":Neotree left toggle reveal<CR>", { desc = "Показать дерево", noremap = true, silent = true })

-- tabs
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Switch to next buffer" })
map("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Switch to prev buffer" })
map("n", "<leader>x", ":BufferLinePickClose<CR>")
map("n", "<C-x>", ":BufferLineCloseOthers<CR>")

-- markdown
map("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Start MD preview" })
map("n", "<leader>mps", ":MarkdownPreviewStop<CR>", { desc = "Stop MD preview" })
-- Переключить предпросмотр (включить, если выключен, и наоборот)
map("n", "<leader>mpt", ":MarkdownPreviewToggle<CR>", { desc = "Toggle MD preview" })
