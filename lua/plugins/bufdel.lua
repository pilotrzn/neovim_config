return {
	"wsdjeg/bufdel.nvim",
	cmd = { "Bdelete", "Bwipeout" }, -- Ленивая загрузка: плагин загрузится при вызове этих команд
	keys = {
		-- Назначаем удобные горячие клавиши
		{ "<leader>bd", "<cmd>Bdelete<cr>", desc = "Delete buffer" },
		{ "<leader>bD", "<cmd>Bdelete!<cr>", desc = "Force delete buffer" },
		{ "<leader>bw", "<cmd>Bwipeout<cr>", desc = "Wipeout buffer" },
	},
	config = function()
		-- Здесь можно добавить дополнительную настройку, если потребуется.
		-- По умолчанию плагин уже настроен на переключение к последнему
		-- использованному буферу ('lastused') при использовании команд.
	end,
}
