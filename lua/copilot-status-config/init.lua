-- lua
require("lualine").setup({
	sections = {
		lualine_x = {
			-- Options with default values
			{
				"copilot",
				show_running = true,
				symbols = {
					status = {
						enabled = " ",
						disabled = " ",
					},
					spinners = require("copilot-status.spinners").dots,
				},
			},
		},
	},
})
