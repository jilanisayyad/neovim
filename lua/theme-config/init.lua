require("onedark").setup({
	style = "warmer",
	transparent = false,
	term_colors = true,
	ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
	cmp_itemkind_reverse = true, -- reverse item kind highlights in cmp menu
	toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
	code_style = {
		comments = "none",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},
	lualine = {
		transparent = false, -- lualine center bar transparency
	},
	colors = {}, -- Override default colors
	highlights = {},
	diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true, -- use undercurl instead of underline for diagnostics
		background = true, -- use background color for virtual text
	},
})

vim.cmd("colorscheme onedark")
