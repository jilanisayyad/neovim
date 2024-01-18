-- -- Lua
-- require("onedark").setup({
--   -- Main options --
--   style = "warmer",           -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--   transparent = false,        -- Show/hide background
--   term_colors = true,         -- Change terminal color as per the selected theme style
--   ending_tildes = true,       -- Show the end-of-buffer tildes. By default they are hidden
--   cmp_itemkind_reverse = true, -- reverse item kind highlights in cmp menu

--   -- toggle theme style ---
--   toggle_style_key = nil,                                                             -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--   toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

--   -- Change code style ---
--   -- Options are italic, bold, underline, none
--   -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
--   code_style = {
--     comments = "none",
--     keywords = "none",
--     functions = "none",
--     strings = "none",
--     variables = "none",
--   },

--   -- Lualine options --
--   lualine = {
--     transparent = false, -- lualine center bar transparency
--   },

--   -- Custom Highlights --
--   colors = {},    -- Override default colors
--   highlights = {}, -- Override highlight groups

--   -- Plugins Config --
--   diagnostics = {
--     darker = true,   -- darker colors for diagnostic
--     undercurl = true, -- use undercurl instead of underline for diagnostics
--     background = true, -- use background color for virtual text
--   },
-- })

-- vim.cmd.colorscheme("onedark")

require("monokai-pro").setup({
	transparent_background = false,
	terminal_colors = true,
	devicons = true, -- highlight the icons of `nvim-web-devicons`
	styles = {
		comment = { italic = false },
		keyword = { italic = false }, -- any other keyword
		type = { italic = false }, -- (preferred) int, long, char, etc
		storageclass = { italic = false }, -- static, register, volatile, etc
		structure = { italic = false }, -- struct, union, enum, etc
		parameter = { italic = false }, -- parameter pass in function
		annotation = { italic = false },
		tag_attribute = { italic = false }, -- attribute of tag in reactjs
	},
	filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
	-- Enable this will disable filter option
	day_night = {
		enable = false, -- turn off by default
		day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
		night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
	},
	inc_search = "background", -- underline | background
	background_clear = {
		-- "float_win",
		"toggleterm",
		"telescope",
		-- "which-key",
		"renamer",
		"notify",
		-- "nvim-tree",
		-- "neo-tree",
		-- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
	}, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
	plugins = {
		bufferline = {
			underline_selected = true,
			underline_visible = true,
		},
		indent_blankline = {
			context_highlight = "pro", -- default | pro
			context_start_underline = true,
		},
	},
	override = function(c) end,
	overridePalette = function(filter)
		return {
			background = "#1e1e1c",
		}
	end,
})

vim.cmd.colorscheme("monokai-pro-classic")
