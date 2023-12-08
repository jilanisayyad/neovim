require("bufferline").setup({
	options = {
		themable = true,
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		mode = "buffers",
		highlights = {
			fill = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			background = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			buffer_selected = {
				guifg = "#ffffff",
				guibg = "#1e222a",
				gui = "bold",
			},
			modified = {
				guifg = "#ffffff",
				guibg = "#1e222a",
				gui = "bold",
			},
			modified_selected = {
				guifg = "#ffffff",
				guibg = "#1e222a",
				gui = "bold",
			},
			separator = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			separator_selected = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			separator_visible = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			separator_selected_visible = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			close_button = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			close_button_selected = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			close_button_visible = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			close_button_selected_visible = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			duplicate = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			duplicate_selected = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			duplicate_visible = {
				guifg = "#ffffff",
				guibg = "#1e222a",
			},
			duplicate_selected_visible = {
				guifg = "#ffffff",
				guibg = "#1e",
			},
			numbers = "ordinal",
			show_buffer_default_icon = true,
			max_name_length = 40,
			tab_size = 20,
			buffer_close_icon = "",
			modified_icon = "●",
			close_icon = "",
			close_command = "Bdelete %d",
			color_icons = true,
			right_mouse_command = "Bdelete! %d",
			left_trunc_marker = "",
			right_trunc_marker = "",
			offsets = { { filetype = "NvimTree", text = "📁", text_align = "center" } },
			show_tab_indicators = true,
			show_buffer_close_icons = true,
			show_buffer_icons = true,
			separator_style = "padded_slant",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,
			always_show_bufferline = true,
		},
	},
})

vim.cmd([[
nnoremap <silent><TAB> :bNext<CR>
nnoremap <silent><S-TAB> :bprevious<CR>
]])
