require("mason-lspconfig").setup({
	automatic_installation = true,
})

require("mason").setup({
	ui = {
		border = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	automatic_servers_installation = true,
})

local nvim_lsp = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Diagnostics symbols for display in the sign column.
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.cmd("setlocal omnifunc=v:lua.vim.lsp.omnifunc")

require("lspconfig").jsonls.setup({
	commands = {
		Format = {
			function()
				vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
			end,
		},
	},
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").vimls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})

require("lspconfig").ansiblels.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
	filetypes = {
		"yaml.ansible",
		"yml",
	},
	settings = {
		ansible = {
			ansible = {
				path = "ansible",
			},
			ansibleLint = {
				enabled = true,
				path = "ansible-lint",
			},
			executionEnvironment = {
				enabled = false,
			},
			python = {
				interpreterPath = "python",
			},
		},
	},
})

require("lspconfig").pyright.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").gopls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").terraformls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").dockerls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").yamlls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
	settings = {
		yaml = {
			schemaStore = {
				enable = "true",
				url = "https://www.schemastore.org/api/json/catalog.json",
			},
			schemas = {
				["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.1-standalone/all.json"] = {
					"depl*.yaml",
					"po*.yaml",
					"daemo*.yaml",
					"repli*",
					"servi*.yaml",
				},
			},
		},
	},
})

require("lspconfig").bashls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})
