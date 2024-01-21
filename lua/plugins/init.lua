return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")
	-- Colorscheme
	use({ "sainnhe/gruvbox-material", config = "require('theme-config')" })
	-- Autocomplete
	use({ "nvim-lua/plenary.nvim" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "hrsh7th/cmp-nvim-lsp-signature-help" })
	use({ "hrsh7th/vim-vsnip" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "onsails/lspkind.nvim" })
	use({ "arkav/lualine-lsp-progress" })
	use({ "hrsh7th/nvim-cmp", requires = { "quangnguyen30192/cmp-nvim-ultisnips" }, config = "require('cmp-config')" })
	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim", config = "require('mason-config')" })
	use({ "mfussenegger/nvim-jdtls" })
	use({
		"nvim-neotest/neotest",
		requires = { "antoinemadec/FixCursorHold.nvim" },
		config = "require('neotest-config')",
	})
	use({ "rcasia/neotest-java" })
	use({ "nvim-neotest/neotest-python" })
	use({ "nvim-neotest/neotest-go" })
	-- Debuggging DAP
	use({
		"jay-babu/mason-nvim-dap.nvim",
		config = "require('mason-dap-config')",
	})
	use({ "mfussenegger/nvim-dap", config = "require('dap-config')" })
	use({ "rcarriga/nvim-dap-ui", config = "require('dap-config')" })
	use({ "theHamsta/nvim-dap-virtual-text", config = "require('dap-virtual-text-config')" })
	use({ "leoluz/nvim-dap-go", config = "require('dap-go-config')" })
	use({ "mfussenegger/nvim-dap-python", config = "require('dap-python-config')" })
	-- CodeRunner
	use({ "CRAG666/code_runner.nvim", config = "require('code-runner-config')" })

	-- copilot
	use({ "github/copilot.vim", config = "require('copilot-config')" })
	use({ "ofseed/copilot-status.nvim" })

	-- File identification for LSP
	use("sheerun/vim-polyglot")

	-- Linting
	use({ "jayp0521/mason-null-ls.nvim", config = "require('mason-null-config')" })
	use({ "jose-elias-alvarez/null-ls.nvim" })

	--
	-- Syntax
	use({ "windwp/nvim-autopairs", config = "require('autopairs-config')", after = "nvim-cmp" })
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		event = "BufWinEnter",
		config = "require('treesitter-config')",
	})
	use({ "windwp/nvim-ts-autotag", event = "InsertEnter", after = "nvim-treesitter" })
	use({ "p00f/nvim-ts-rainbow", after = "nvim-treesitter" })
	use({ "norcalli/nvim-colorizer.lua", config = "require('colorizer-config')", event = "BufRead" })
	use("tpope/vim-commentary")
	use({ "tami5/lspsaga.nvim", config = "require('lspsaga-config')" })
	use({ "itchyny/vim-highlighturl", event = "VimEnter" })

	-- Language Specific
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" })
	use({ "towolf/vim-helm" })

	-- Indentation
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = "require('blankline-config')",
		requires = {
			"TheGLander/indent-rainbowline.nvim",
		},
		event = { "BufNewFile", "BufRead", "InsertEnter" },
	})

	-- Buffer and statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = "require('lualine-config')",
	})
	-- Fzf
	use({
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		config = "require('telescope-config')",
	})

	-- telescope-extensions
	use({
		"benfowler/telescope-luasnip.nvim",
		module = "telescope._extensions.luasnip", -- if you wish to lazy-load
	})
	use({ "barrett-ruth/telescope-http.nvim" })
	use({
		"dhruvmanila/telescope-bookmarks.nvim",
		tag = "*",
	})
	-- Git
	use("f-person/git-blame.nvim")
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup({ current_line_blame = true })
		end,
	})
	-- Snippet engine and snippet template
	use({
		"SirVer/ultisnips",
		requires = { { "honza/vim-snippets", rtp = "." } },
		config = 'require("ultisnips-config")',
	})
	use({ "L3MON4D3/LuaSnip", tag = "v1.1.0", config = "require('luasnip-config')" })
	-- Extras
	use({ "folke/which-key.nvim", event = "BufWinEnter", config = "require('whichkey-config')" })
	use({
		"karb94/neoscroll.nvim",
		event = "VimEnter",
		config = function()
			vim.defer_fn(function()
				require("neoscroll-config")
			end, 2000)
		end,
	})
	--- nvimtree plugin
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = "require('nvimtree-config')",
	})
	use({
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		event = "VimEnter",
		requires = "nvim-tree/nvim-web-devicons",
		config = "require('bufferline-config')",
	})
	use({ "nvim-tree/nvim-web-devicons", config = "require('devicons-config')" })
	-- winbar plugin
	use({ "fgheng/winbar.nvim", config = "require('winbar-config')" })
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		config = "require('barbecue-config')",
	})
	-- impatient
	use({ "lewis6991/impatient.nvim", config = "require('impatient-config')" })
	-- startup-time
	use("dstein64/vim-startuptime")
	-- notifications
	use({ "j-hui/fidget.nvim", config = "require('fidget-config')" })
	-- nvim notify
	use({ "rcarriga/nvim-notify" })
	-- neodev
	use({ "folke/neodev.nvim", config = "require('neodev-config')" })
	--cursorword
	use({ "yamatsum/nvim-cursorline", config = "require('cursorword-config')" })
	--search and replace
	use({ "cshuaimin/ssr.nvim", module = "ssr", config = "require('ssr-config')" })
	-- project management
	use({
		"coffebar/neovim-project",
		config = "require('project-config')",
		requires = {
			{ "Shatur/neovim-session-manager" },
		},
	})
	-- image wsl
	use({ "HakonHarnes/img-clip.nvim", config = "require('img-clip-config')" })
	use({ "akinsho/toggleterm.nvim", config = "require('toggleterm-config')" })
	use({
		"willothy/nvim-cokeline",
		requires = { { "kyazdani42/nvim-web-devicons" }, { "stevearc/resession.nvim" } },
		config = "require('cokeline-config')",
	})
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async", config = "require('ufo-config')" })
end)
