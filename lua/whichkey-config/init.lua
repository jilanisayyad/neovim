local wk = require("which-key")
wk.setup({
	plugins = {
		marks = false,
		registers = false,
		spelling = { enabled = false, suggestions = 20 },
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = false,
			nav = false,
			z = false,
			g = false,
		},
	},
})

local mappings = {
	e = { ":NvimTreeToggle<cr>", "FileManager" },
	s = { ":w!<cr>", "Save" },
	q = { ":bd!<cr>", "Quit" },
	R = { ":RunCode<cr>", "Run Code" },
	q = { ":bd!<cr>", "Quit All" },
	f = { ":Telescope find_files<cr>", "Telescope Find Files" },
	g = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
	t = { v = { ":vsplit<cr>", "vsplit" }, h = { ":split<cr>", "split" } },
	h = { ":Telescope http list<cr>", "Telescope http" },
	b = { ":Telescope bookmarks<cr>", "Telescope bookmarks" },
	l = {
		name = "LSP and DAP",
		s = { ":LspStart<cr>", "LSP Start" },
		l = { ":Telescope i23 dap23<cr>", "DAP Launch File" },
		n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
		N = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic" },
	},
}
local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
