opts = {
	scope = {
		enabled = true,
		show_start = true,
	},
}

require("ibl").setup(require("indent-rainbowline").make_opts(opts, {
	color_transparency = 0.10,
}))
