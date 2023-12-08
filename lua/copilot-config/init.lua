-- GithubCopilot
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
vim.g.copilot_filetypes = {
	["*"] = true,
}
vim.cmd([[highlight CopilotSuggestion guifg=#555555 ctermfg=8]])
