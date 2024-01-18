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
	R = { ":RunCode<cr>", "Run Code" },
	q = { ":bd!<cr>", "Quit All" },
	f = { ":Telescope find_files<cr>", "Telescope Find Files" },
	g = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
	h = { ":Telescope http list<cr>", "Telescope http" },
	b = { ":Telescope bookmarks<cr>", "Telescope bookmarks" },
	n = {
		name = "Notes",
		n = { ":Telescope neovim-project discover<cr>", "Projects" },
	},
	l = {
		name = "LSP and DAP",
		s = { ":LspStart<cr>", "LSP Start" },
		l = { ":Telescope i23 dap23<cr>", "DAP Launch File" },
		n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
		N = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic" },
	},
	t = {
		name = "Run Tests",
		t = { "<cmd>lua require('neotest').run.run(vim.loop.cwd())<cr>", "Run All Tests" },
		n = { "<cmd>lua require('neotest').run.run()<cr>", "Run Nearest" },
		s = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop" },
		S = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Toggle Summary" },
		oo = { "<cmd>lua require('neotest').output.open({ enter = true, auto_close = true })<cr>", "Open Output" },
		ot = { "<cmd> lua require('neotest').output_panel.toggle()<cr>", "Toggle Output Panel" },
		a = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach" },
		l = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Run Current Test File" },
		d = { "<cmd>lua require('neotest').run.run({strategy='dap'})<cr>", "Debug" },
		fp = { "<cmd><cmd>lua require('neotest').jump.prev({ status ='failed' })<cr>", "Prev Failed" },
		fn = { "<cmd><cmd>lua require('neotest').jump.next({ status ='passed' })<cr>", "Next Passed" },
		pp = { "<cmd><cmd>lua require('neotest').jump.prev({ status ='passed' })<cr>", "Prev Passed" },
		pn = { "<cmd><cmd>lua require('neotest').jump.next({ status ='passed' })<cr>", "Next Passed" },
		w = { "<cmd>lua require('neotest').watch.toggle(vim.fn.expand('%'))<cr>", "Watch Test" },
	},
	z = {
		name = "folding",
		o = { ":foldopen<cr>", "Open All" },
		c = { ":foldclose<cr>", "Close All" },
	},
	p = { ":PasteImage<cr>", "Paste Image" },
}
local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
