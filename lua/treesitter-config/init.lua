vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	virtual_text = {
		spacing = 5,
		severity_limit = "Warning",
	},
	update_in_insert = true,
})
require("nvim-treesitter.configs").setup({
	indent = {
		enable = true,
	},
	auto_install = true,
	ensure_installed = {
		"html",
		"javascript",
		"lua",
		"yaml",
		"bash",
		"python",
		"go",
		"markdown",
		"json",
		"vim",
		"dockerfile",
		"java",
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
	},
	autopairs = {
		enable = true,
	},
})
