return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local bufferline = require("bufferline")
			local gray = "#9fa3be"
			local links = "#ffffff"
			bufferline.setup({
				options = {
					mode = "buffers",
					numbers = "none",
					color_icons = false,
					indicator = {
						style = "none",
					},
					modified_icon = "●",
					left_trunc_marker = "",
					right_trunc_marker = "",
					diagnostics = "nvim_lsp",
					diagnostic_indicator = function(count, level, diagnostic_dict, context)
						local s = " "
						for e, _ in pairs(diagnostic_dict) do
							local sym = e == "error" and " " or (e == "warning" and " " or " ")
							s = s .. sum
						end
						return s
					end,
					always_show_bufferline = true,
				},
				highlights = {
					background = {
						fg = gray,
						bg = "#1e1e2e",
					},
					buffer_selected = {
						fg = links,
					},
					buffer_visible = {
						fg = gray,
						bg = "#282c34",
					},
					separator = {
						fg = "#1e1e2e",
						bg = "#1e1e2e",
					},
					diagnostic = {},
				},
			})
		end,
	},
}
