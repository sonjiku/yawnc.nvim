local p = require('yawnc.palette')

return {
    normal = {
    a = { bg = p.base04, fg = p.base00 },
    b = { bg = p.base00, fg = p.color7 },
    c = { bg = p.base00, fg = p.foreground },
    },

    insert = {
    a = { bg = p.base02, fg = p.base00 },
    b = { bg = p.base00, fg = p.base04 },
    },

    command = {
    a = { bg = p.base05, fg = p.base00 },
    b = { bg = p.base00, fg = p.base05 },
    },

    visual = {
    a = { bg = p.base06, fg = p.base00 },
    b = { bg = p.base00, fg = p.base06 },
    },

    replace = {
    a = { bg = p.base0B, fg = p.base00 },
    b = { bg = p.base00, fg = p.base0B },
    },

    inactive = {
    a = { bg = p.base00, fg = p.base07},
    b = { bg = p.base00, fg = p.base0F, gui = "bold" },
    c = { bg = p.base00, fg = p.base0F },
    },
}
