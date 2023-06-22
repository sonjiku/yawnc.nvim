local config = require("yawnc.config")
local Yawnc = {}

function Yawnc.colorscheme()

	vim.opt.termguicolors = true
	if vim.g.colors_name then
		vim.cmd('hi clear')
		vim.cmd('syntax reset')
	end
	vim.g.colors_name = "yawnc"

	require("yawnc.theme")._load(config.options)
end

function Yawnc.setup(options)
	config.extend(options)
end

return Yawnc
