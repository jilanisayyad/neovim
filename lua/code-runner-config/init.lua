require("code_runner").setup({
	filetype = {
		java = {
			"cd $dir &&",
			"javac $fileName &&",
			"java $fileNameWithoutExt",
		},
		python = "python3 -u",
		go = "go run",
		bash = "bash",
	},
})
