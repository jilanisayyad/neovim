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
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				typeCheckingMode = "off",
				useLibraryCodeForTypes = true,
			},
			pyright = {
				disableLanguageServices = true,
				disableOrganizeImports = true,
				reportMissingModuleSource = "none",
				reportMissingImports = "none",
				reportUndefinedVariable = "none",
			},
		},
	},
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
					"*depl*.yaml",
					"*po*.yaml",
					"*daemo*.yaml",
					"*repli*.yaml",
					"*servi*.yaml",
					"*secret*.yaml",
					"*service-account*.yaml",
					"*role*.yaml",
					"*role-binding*.yaml",
					"*config-map*.yaml",
					"*job*.yaml",
					"*cronjob*.yaml",
					"*ingress*.yaml",
					"*network-policy*.yaml",
					"*persistent-volume*.yaml",
					"*persistent-volume-claim*.yaml",
					"*storage-class*.yaml",
					"*volume*.yaml",
					"*namespace*.yaml",
					"*limit-range*.yaml",
					"*resource-quota*.yaml",
					"*priority-class*.yaml",
					"*pod-template*.yaml",
				},
				["https://json.schemastore.org/chart.json"] = {
					"Chart.yaml",
				},
				["https://json.schemastore.org/kustomization.json"] = {
					"kustomization.yaml",
				},
				["https://json.schemastore.org/github-workflow.json"] = {
					".github/workflows/*.yml",
				},
				["https://json.schemastore.org/github-action.json"] = {
					"*github-action*.yaml",
				},
				["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
					"azure-pipelines.yaml",
				},
				["https://raw.githubusercontent.com/argoproj/argo-events/master/api/jsonschema/schema.json"] = {
					"*events*.yaml",
				},
				["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = {
					"*workflow*.yaml",
					"*clustertemplate*.yaml",
					"*cronworkflow*.yaml",
					"*cluster-workflow-template*.yaml",
					"*workflow-template*.yaml",
					"*argo*.yaml",
				},
				["https://json.schemastore.org/yamllint.json"] = {
					"*.yml",
					"*.yaml",
				},
			},
		},
	},
})

require("lspconfig").bashls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").marksman.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

require("lspconfig").tsserver.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})
