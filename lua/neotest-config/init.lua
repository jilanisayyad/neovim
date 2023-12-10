require("neotest").setup({
	quickfix = {
		open = false,
		enabled = false,
	},
	status = {
		enabled = true,
		signs = true, -- Sign after function signature
		virtual_text = false,
	},
	icons = {
		child_indent = "│",
		child_prefix = "├",
		collapsed = "─",
		expanded = "╮",
		failed = "✘",
		final_child_indent = " ",
		final_child_prefix = "╰",
		non_collapsible = "─",
		passed = "✓",
		running = "",
		running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
		skipped = "↓",
		unknown = "",
	},
	floating = {
		border = "rounded",
		max_height = 0.9,
		max_width = 0.9,
		options = {},
	},
	summary = {
		open = "botright vsplit | vertical resize 60",
		mappings = {
			attach = "a",
			clear_marked = "M",
			clear_target = "T",
			debug = "d",
			debug_marked = "D",
			expand = { "<CR>", "<2-LeftMouse>" },
			expand_all = "e",
			jumpto = "i",
			mark = "m",
			next_failed = "J",
			output = "o",
			prev_failed = "K",
			run = "r",
			run_marked = "R",
			short = "O",
			stop = "u",
			target = "t",
			watch = "w",
		},
	},
	highlights = {
		adapter_name = "NeotestAdapterName",
		border = "NeotestBorder",
		dir = "NeotestDir",
		expand_marker = "NeotestExpandMarker",
		failed = "NeotestFailed",
		file = "NeotestFile",
		focused = "NeotestFocused",
		indent = "NeotestIndent",
		marked = "NeotestMarked",
		namespace = "NeotestNamespace",
		passed = "NeotestPassed",
		running = "NeotestRunning",
		select_win = "NeotestWinSelect",
		skipped = "NeotestSkipped",
		target = "NeotestTarget",
		test = "NeotestTest",
		unknown = "NeotestUnknown",
	},
	enable_coverage = true,
	enable_capture_output = true,
	library = { plugins = { "neotest" }, types = true },
	adapters = {
		require("neotest-java")({
			ignore_wrapper = false,
		}),
		require("neotest-python")({
			python = "python3",
			dap = { justMyCode = false },
			pytest_discover_instances = true,
		}),
		require("neotest-go")({}),
	},
})

local neotest = require("neotest")
local neotest_ns = vim.api.nvim_create_namespace("neotest")
vim.diagnostic.config({
	virtual_text = {
		format = function(diagnostic)
			local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
			return message
		end,
	},
}, neotest_ns)

-- Neotest Shortcuts
require("which-key").register({
	["<leader>"] = {
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
	},
})
