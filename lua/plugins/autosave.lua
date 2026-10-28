return {
	"pocco81/auto-save.nvim",
	event = { "InsertEnter", "TextChanged" }, -- ленивая загрузка
	config = function()
		require("auto-save").setup({
			enabled = true,
			trigger_events = { "InsertLeave", "TextChanged" }, -- когда сохранять
			condition = function(buf)
				local fn = vim.fn
				local utils = require("auto-save.utils.data")
				if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
					return true
				end
				return false
			end,
			write_all_buffers = false, -- сохранять только текущий буфер
			debounce_delay = 800, -- миллисекунд между сохранениями
			execution_message = {
				message = function()
					return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")
				end,
				dim = 0.18,
				cleaning_interval = 1850,
			},
		})
	end,
}
