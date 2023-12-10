local jdtls = require("jdtls")
local jdtls_dap = require("jdtls.dap")

local config = {
	cmd = { "jdtls" },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
	capabilities = {
		workspace = {
			configuration = true,
		},
		textDocument = {
			completion = {
				completionItem = {
					snippetSupport = true,
				},
			},
		},
	},
	settings = {
		java = {
			signatureHelp = { enabled = true },
		},
	},
	sources = {
		organizeImports = {
			starThreshold = 9999,
			staticStarThreshold = 9999,
		},
	},
	codeGeneration = {
		toString = {
			template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
		},
		hashCodeEquals = {
			useJava7Objects = true,
		},
		useBlocks = true,
	},
}

local bundles = {
	vim.fn.glob(
		"~/.local/share/nvim/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
		true
	),
}

vim.list_extend(
	bundles,
	vim.split(vim.fn.glob("~/.local/share/nvim/mason/packages/java-test/extension/server/*.jar", true), "\n")
)

config.init_options = {
	bundles = bundles,
}

config.on_attach = function(client, bufnr)
	jdtls.setup_dap({ hotcodereplace = "auto" })
	jdtls_dap.setup_dap_main_class_configs()
	local opts = { silent = true, buffer = bufnr }
	vim.keymap.set("n", "<leader-jO>", jdtls.organize_imports, opts)
	vim.keymap.set("n", "jP", jdtls_dap.pickup_test, opts)
	vim.keymap.set("n", "jC", jdtls.compile, opts)
	vim.keymap.set("n", "crv", jdtls.extract_variable, opts)
	vim.keymap.set("v", "crm", [[<ESC><CMD>lua require('jdtls').extract_method(true)<CR>]], opts)
	vim.keymap.set("n", "crc", jdtls.extract_constant, opts)
end

jdtls.start_or_attach(config)
