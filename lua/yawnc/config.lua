local Config = {}
Config.options = {
    telescope = false,
    telescope_borders = false,
    indentblankline = false,
    notify = false,
    ts_rainbow = false,
    cmp = false,
    illuminate = true,
    lsp_semantic = true,
    modes = false,
    mini_completion = true,
    highlight_p = {},
}

function Config.extend(options)
	Config.options = vim.tbl_deep_extend("force", Config.options, options or {})
end
return Config
