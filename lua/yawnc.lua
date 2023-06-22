local config = require("pywal.config")
local Wal16 = {}

function Wal16.colorscheme()

	vim.opt.termguicolors = true
	if vim.g.colors_name then
		vim.cmd('hi clear')
		vim.cmd('syntax reset')
	end
	vim.g.colors_name = "yawnc"

	require("wal16.theme")._load(config.options)
end

function Wal16.setup(options)
	config.extend(options)
end

return Wal16
