local Theme={}

function Theme._load(options)
        local util=require("yawnc.util")
        local hl=util.highlight
        local p=require("yawnc.palette")


        -- background="base",
        -- background_nc="nc",
        -- panel="surface",
        -- panel_nc="base",
        -- border="highlight_med",
        -- comment="muted",
        -- l="iris",
        -- punctuation="muted",
        -- error="love",
        -- hint="iris",
        -- info="foam",
        -- warn="gold",
        -- git_add="foam",
        -- git_change="rose",
        -- git_delete="love",
        -- git_dirty="rose",
        -- git_ignore="muted",
        -- git_merge="iris",
        -- git_rename="pine",
        -- git_stage="iris",
        -- git_text="rose",
        -- headings={
        --         h1="iris",
        --         h2="foam",
        --         h3="rose",
        --         h4="gold",
        --         h5="pine",
        --         h6="foam",
        -- 00 nc               #16141f
        -- 01 base             #191724
        -- 02 surface          #1f1d2e 01,05
        -- 03 highlight_low    #21202e 01
        -- 04 overlay          #26233a 01,03,05
        -- 05 highlight_med    #403d52 0A
        -- 06 highlight_high   #524f67 05
        -- 07 muted            #6e6a86 0C,04
        -- 08 subtle           #908caa 08,0B,0C,0D
        -- 09 text             #e0def4 04,03
        -- 0A love             #eb6f92 08,0D
        -- 0B gold             #f6c177 0D
        -- 0C rose             #ebbcba 0E,09
        -- 0D pine             #31748f 0E,08,0A
        -- 0E foam             #9ccfd8 0B,0D,03
        -- 0F iris             #c4a7e7 0B,0E
        -- none NONE

        hl("Cursor", {f=p.base00, b=p.base05})
        hl("CursorColumn", {b=p.base05, g=p.none})
        hl("CursorIM", {g=p.none})
        hl("CursorLine", {b=p.base01, g=p.none})
        hl("CursorLineNr", {f=p.base04, b=p.base01})
        hl("DarkenedPanel", {b=p.base01})
        hl("DarkenedStatusline", {b=p.base01})
    -- Diff hlghlighting
        hl("DiffAdded", {f=p.base0B, b=p.base00})
        hl("DiffAdd", {f=p.base0B, b=p.base00})
        hl("DiffChange", {f=p.base03, b=p.base00})
        hl("DiffRemoved", {f=p.base08, b=p.base00})
        hl("DiffDelete", {f=p.base08, b=p.base00})
        hl("DiffText", {f=p.base0D, b=p.base00})
        hl("DiffFile", {f=p.base08, b=p.base00})
        hl("DiffNewFile", {f=p.base0B, b=p.base00})
        hl("DiffLine", {f=p.base0D, b=p.base00})
        hl("EndOfBuffer", {l="Normal"})
        hl("ErrorMsg", {f=p.base08, b=p.base00, B=true})
        hl("WarningMsg", { f=p.base08 })
        hl("FoldColumn", {f=p.base0C, b=p.base00})
        hl("Folded", {f=p.base03, b=p.base01})
    -- Search
        hl("Search", { f=p.base01, b=p.base0A })
        hl("IncSearch", { f=p.base01, b=p.base09, g=p.none })
        hl("CurSearch", {l="IncSearch"})
        hl("LineNr", {f=p.base04, b=p.base00})
        hl("MatchParen", {b=p.base03})
        hl("ModeMsg", {f=p.base0B})
        hl("MoreMsg", {f=p.base0B})
        hl("NonText", {f=p.base03})
        hl("Visual", { b=p.base02 })
        hl("VisualNOS", { f=p.base08 })
        hl("Normal", {f=p.base05, b=p.base00})
        hl("NormalNC", {f=p.base05, b=p.base03})
        hl("NormalFloat", {f=p.base05, b=p.base01})
        hl("FloatBorder", {f=p.base05, b=p.base00})
        hl("FloatTitle", {f=p.base0C})
        hl("NvimInternalError", {f=p.base00, b=p.base08, g=p.none})
    -- pmenu
        hl("Pmenu", {f=p.base05, b=p.base01, g=p.none})
        hl("PmenuSbar", {f=p.base05, b=p.base02, g=p.none})
        hl("PmenuSel", { f=p.base01, b=p.base05 })
        hl("PmenuThumb", { b=p.base03 })
        hl("Question", { g=p.base0D })
    -- Redraw Debug
        hl("RedrawDebugNormal",{l="Normal"})
        hl("RedrawDebugClear", { f=p.base07, bg=p.base0D })
        hl("RedrawDebugComposed", { f=p.base07, bg=p.base0E })
        hl("RedrawDebugRecompose", { f=p.base07, bg=p.base08 })
        hl("SpecialKey", { f=p.base03 })
    -- Spelling hlghlighting
        hl("SpellBad", { UC=true, s=p.base08 })
        hl("SpellCap", { UC=true, s=p.base0D })
        hl("SpellLocal", { UC=true, s=p.base0C })
        hl("SpellRare", { UC=true, s=p.base0E })
    -- StatusLine
        hl("Statusline", { f=p.base05, b=p.base02, g=p.none })
        hl("StatuslineNC", { f=p.base04, b=p.base01, g=p.none })
        hl("StatusLineTerm", { l="StatusLine" })
        hl("StatusLineTermNC", { l="StatusLineNC" })
    -- TabLine
        hl("TabLine", { f=p.base03, b=p.base01, g=p.none })
        hl("TabLineFill", { f=p.base03, b=p.base02, g=p.none })
        hl("TabLineSel", { f=p.base0B, b=p.base01, g=p.none })


        hl("SignColumn", { f=p.base04, b=p.base00 })

        hl("Title", { f=p.base0D, g=p.none })
        hl("VertSplit", { f=p.base05, b=p.base00, g=p.none })
        hl("WildMenu", { l="IncSearch" })
        -- hl("WildMenu", { f=p.base08, b=p.base0A })

    -- Vim editor colors
    hl("Bold",{B=true})
    hl("Directory", {f=p.base0D})
    hl("Italic", { I=true })
    hl("Substitute", { f=p.base01, b=p.base0A })
    hl("TooLong", {f=p.perror})
    hl("Conceal", {f=p.base0D, b=p.base00})
    hl("WinBar", {f=p.base05, g=p.none})
    hl("WinBarNC", {f=p.base04, g=p.none})
    hl("ColorColumn", {b=p.base01, g=p.none})
    hl("QuickFixLine", {b=p.base01, g=p.none})

    -- Standard syntax hlghlighting
    hl("Boolean", {f=p.base09})
    hl("Character", {f=p.base08})
    hl("Comment", {f=p.base03, I=true})
    hl("Conditional", {f=p.base0E})
    hl("Constant", {f=p.base09})
    hl("Debug", {f=p.base08})
    hl("Define", {f=p.base0E, g=p.none})
    hl("Delimiter", {f=p.base0E})
    hl("Error", {f=p.base08, b=p.base00})
    hl("Exception", {f=p.base08})
    hl("Float", {f=p.base09})
    hl("Function", {f=p.base0D})
    hl("Identifier", {f=p.base08, g=p.none})
    hl("Ignore", {f=p.base02, g=p.none})
    hl("Include", {f=p.base0D})
    hl("Keyword", {f=p.base0E})
    hl("Label", {f=p.base0A})
    hl("Macro", {f=p.base08, B=true})
    hl("Number", {f=p.base09})
    hl("Operator", {f=p.base05 })
    hl("PreCondit", {f=p.base0A })
    hl("PreProc", {f=p.base0A })
    hl("Repeat", {f=p.base0A })
    hl("Special", {f=p.base0C })
    hl("SpecialChar", {f=p.base0F })
    hl("SpecialComment", {f=p.base0A, I=true})
    hl("Statement", {f=p.base08})
    hl("StorageClass", {f=p.base0A})
    hl("String", {f=p.base0B})
    hl("Structure", {f=p.base0E})
    hl("Tag", {f=p.base0A})
    hl("Todo", {f=p.base0A, b=p.base01})
    hl("Type", {f=p.base0A})
    hl("Typedef", {f=p.base0A})
    hl("Underlined", {f=p.base08, UL=true})



    -- Diagnostics
    hl("DiagnosticError", { f=p.perror })
    hl("DiagnosticWarn", { f=p.pwarn })
    hl("DiagnosticInfo", { f=p.pinfo })
    hl("DiagnosticHint", { f=p.phint })
    hl("DiagnosticDefaultError", { l="DiagnosticError" })
    hl("DiagnosticDefaultHint", { l="DiagnosticHint" })
    hl("DiagnosticDefaultInfo", { l="DiagnosticInfo" })
    hl("DiagnosticDefaultWarn", { l="DiagnosticWarn" })
    hl("DiagnosticFloatingError", { l="DiagnosticError" })
    hl("DiagnosticFloatingHint", { l="DiagnosticHint" })
    hl("DiagnosticFloatingInfo", { l="DiagnosticInfo" })
    hl("DiagnosticFloatingWarn", { l="DiagnosticWarn" })
    hl("DiagnosticSignError", { l="DiagnosticError" })
    hl("DiagnosticSignHint", { l="DiagnosticHint" })
    hl("DiagnosticSignInfo", { l="DiagnosticInfo" })
    hl("DiagnosticSignWarn", { l="DiagnosticWarn" })
    hl("DiagnosticVirtualTextError", { l="DiagnosticError" })
    hl("DiagnosticVirtualTextHint", { l="DiagnosticHint" })
    hl("DiagnosticVirtualTextInfo", { l="DiagnosticInfo" })
    hl("DiagnosticVirtualTextWarn", { l="DiagnosticWarn" })
    hl("DiagnosticUnderlineError", { s=p.perror, UC=true })
    hl("DiagnosticUnderlineHint", { s=p.phint, UC=true })
    hl("DiagnosticUnderlineWarn", { s=p.pwarn, UC=true })
    hl("DiagnosticUnderlineWarning", { s=p.pwarn, UC=true })
    hl("DiagnosticUnderlineInfo", { s=p.pinfo, UC=true })
    hl("DiagnosticUnderlineInformation", { s=p.pinfo, UC=true })
    hl("DiagnosticStatusLineError", { f=p.perror, b=p.base01 })
    hl("DiagnosticStatusLineHint", { f=p.phint, b=p.base01 })
    hl("DiagnosticStatusLineInfo", { f=p.pinfo, b=p.base01 })
    hl("DiagnosticStatusLineWarn", { f=p.pwarn, b=p.base01 })

    -- healthcheck
    hl("healthError", { fg=p.perror })
    hl("healthSuccess", { fg=p.phint })
    hl("healthWarning", { fg=p.pwarn })

    -- markdown
    hl("markdownDelimiter", { f=p.base05 })
    hl("markdownH1", { f=p.base08, B=true })
    hl("markdownH1Delimiter", { l="markdownH1" })
    hl("markdownH2", { f=p.base09, B=true })
    hl("markdownH2Delimiter", { l="markdownH2" })
    hl("markdownH3", { f=p.base0A, B=true })
    hl("markdownH3Delimiter", { l="markdownH3" })
    hl("markdownH4", { f=p.base0B, B=true })
    hl("markdownH4Delimiter", { l="markdownH4" })
    hl("markdownH5", { f=p.base0C, B=true })
    hl("markdownH5Delimiter", { l="markdownH5" })
    hl("markdownH6", { f=p.base0D, B=true })
    hl("markdownH6Delimiter", { l="markdownH6" })
    hl("markdownLinkText", { f=p.base08,s=p.base08, UL=true })
    hl("markdownUrl", { f=p.base09, s=p.base09, UL=true })
    hl("mkdCode", { f=p.base0B, I=true })
    hl("mkdCodeDelimiter", { f=p.base0B })
    hl("mkdCodeEnd", { f=p.base0B, B=true })
    hl("mkdCodeStart", { f=p.base0B, B=true })
    hl("mkdFootnotes", { f=p.base0D })
    hl("mkdID", { f=p.base0D, UL=true })
    hl("mkdInlineURL", { l="markdownUrl" })
    hl("mkdLink", { l="markdownLinkText" })
    hl("mkdLinkDef", { l="markdownLinkText" })
    hl("mkdListItemLine", { f=p.base08 })
    hl("mkdRule", { f=p.base04 })
    hl("mkdURL", { l="markdownUrl" })
    --html
    hl("htmlArg", { f=p.base09 })
    hl("htmlBold", { B=true })
    hl("htmlItalic", { l="Italic" })
    hl("htmlLink", { l="mkdLink" })
    hl("htmlTag", { f=p.base08 })
    hl("htmlTagN", { f=p.base08 })
    hl("htmlTagName", { f=p.base08 })
    hl("htmlEndTag", { f=p.base08 })
    hl("htmlH1", { l="markdownH1" })
    hl("htmlH2", { l="markdownH2" })
    hl("htmlH3", { l="markdownH3" })
    hl("htmlH4", { l="markdownH4" })
    hl("htmlH5", { l="markdownH5" })

    -- LSP
    hl("LspReferenceText", { b=p.base02, UL=true })
    hl("LspReferenceRead", { b=p.base02, UL=true })
    hl("LspReferenceWrite", { b=p.base02, UL=true })
    -- lsp-highlight-codelens
    hl("LspCodeLens", { f=p.base04 }) -- virtual text of code len
    hl("LspCodeLensSeparator", { f=p.base03 }) -- separator between two or more code len

    hl("LspDiagnosticsDefaultError", { l="DiagnosticError" })
    hl("LspDiagnosticsDefaultWarning", { l="DiagnosticWarn" })
    hl("LspDiagnosticsDefaultInformation", { l="DiagnosticInfo" })
    hl("LspDiagnosticsDefaultHint", { l="DiagnosticHint" })
    hl("LspDiagnosticsUnderlineError", { l="DiagnosticUnderlineError" })
    hl("LspDiagnosticsUnderlineWarning", { l="DiagnosticUnderlineWarning" })
    hl("LspDiagnosticsUnderlineInformation", { l="DiagnosticUnderlineInformation" })
    hl("LspDiagnosticsUnderlineHint", { l="DiagnosticUnderlineHint" })
    hl("LspInlayHint", { f=p.base03, I=true })

    -- TreeSitter
    hl("TreesitterContext", { b=p.base01, I=true })
    hl("TSConstant", { f=p.base09 })
    hl("TSConstBuiltin", { f=p.base09, I=true })
    hl("TSConstMacro", { f=p.base08, B=true  })
    hl("TSError", { f=p.base08 })
    hl("TSException", { f=p.base08 })
    hl("TSFloat", { f=p.base09 })
    hl("TSFunction", { f=p.base0D })
    hl("TSFuncBuiltin", { f=p.base0D, I=true })
    hl("TSFuncMacro", { f=p.base0D, B=true })
    hl("TSInclude", { f=p.base0D })
    hl("TSKeyword", { f=p.base0E })
    hl("TSKeywordFunction", { f=p.base0E })
    hl("TSKeywordOperator", { f=p.base0E })
    hl("TSLabel", { f=p.base0A })
    hl("TSMethod", { f=p.base0D })
    hl("TSOperator", { f=p.base05 })
    hl("TSParameter", { f=p.base05 })
    hl("TSProperty", { f=p.base05 })
    hl("TSPunctDelimiter", { f=p.base0F })
    hl("TSPunctBracket", { f=p.base05 })
    hl("TSPunctSpecial", { f=p.base05 })
    hl("TSRepeat", { f=p.base0E })
    hl("TSString", { f=p.base0B })
    hl("TSStringRegex", { f=p.base0C })
    hl("TSStringEscape", { f=p.base0C })
    hl("TSSymbol", { f=p.base0B })
    hl("TSTag", { f=p.base08 })
    hl("TSTagDelimiter", { f=p.base0F })
    hl("TSText", { f=p.base05 })
    hl("TSStrong", { B=true })
    hl("TSEmphasis", { I=true })
    hl("TSUnderline", { UL=true })
    hl("TSStrike", { ST=true })
    hl("TSTitle", { f=p.base0D })
    hl("TSURI", { f=p.base09, UL=true })
    hl("TSDefinition", { UL=true, s=p.base04 })
    hl("TSDefinitionUsage", { UL=true, s=p.base04 })
    hl("TSCurrentScope", { B=true })
    hl("TSAnnotation", { f=p.base0F })
    hl("TSattribute", { f=p.base0A })
    if vim.fn.has("nvim-0.8.0") then
        hl("@todo", { l="Todo" })
        hl("@comment", { l="Comment" })
        hl("@error", { l="TSError" })
        hl("@none", { f=p.base05 })
        hl("@preproc", { l="PreProc" })
        hl("@define", { l="Define" })
        hl("@operator", { l="TSOperator" })
        hl("@punctuation", { fg=p.base05 })
        hl("@punctuation.delimiter", { l="TSPunctDelimiter" })
        hl("@punctuation.bracket", { l="TSPunctBracket" })
        hl("@punctuation.special", { l="TSPunctSpecial" })
        hl("@string", { l="TSString" })
        hl("@string.regex", { l="TSStringRegex" })
        hl("@string.escape", { l="TSStringEscape" })
        hl("@string.special", { l="SpecialChar" })
        hl("@character", { l="TSCharacter" })
        hl("@character.special", { l="SpecialChar" })
        hl("@boolean", { l="TSBoolean" })
        hl("@number", { l="TSNumber" })
        hl("@float", { l="TSFloat" })
        hl("@function", { l="TSFunction" })
        hl("@function.call", { l="TSFunction" })
        hl("@function.builtin", { l="TSFuncBuiltin" })
        hl("@function.macro", { l="TSFuncMacro" })
        hl("@method", { l="TSMethod" })
        hl("@method.call", { l="TSMethod" })
        hl("@constructor", { l="TSConstructor" })
        hl("@parameter", { l="TSParameter" })
        hl("@keyword", { l="TSKeyword" })
        hl("@keyword.function", { "TSKeywordFunction" })
        hl("@keyword.operator", { l="TSKeywordOperator" })
        hl("@keyword.return", { "TSKeyword" })
        hl("@conditional", { l="TSConditional" })
        hl("@repeat", { l="TSRepeat" })
        hl("@debug", { l="Debug" })
        hl("@label", { l="TSLabel" })
        hl("@include", { l="TSInclude" })
        hl("@exception", { l="TSException" })
        hl("@type", { l="TSType" })
        hl("@type.builtin", { l="TSTypeBuiltin" })
        hl("@type.qualifier", { l="TSKeyword" })
        hl("@type.definition", { l="TSType" })
        hl("@storageclass", { l="StorageClass" })
        hl("@attribute", { l="TSAttribute" })
        hl("@field", { l="TSField" })
        hl("@property", { l="TSProperty" })
        hl("@variable", { l="TSVariable" })
        hl("@variable.builtin", { l="TSVariableBuiltin" })
        hl("@constant", { l="TSConstant" })
        hl("@constant.builtin", { l="TSConstBuiltin" })
        hl("@constant.macro", { l="TSConstMacro" })
        hl("@namespace", { l="TSNamespace" })
        hl("@symbol", { l="TSSymbol" })
        hl("@tag", { l="TSTag" })
        hl("@tag.attribute", { l="TSAttribute" })
        hl("@tag.delimiter", { l="TSTagDelimiter" })
        hl("@macro", { l="Macro" })
        hl("@class", { l="TSType" })
        hl("@struct", { l="TSType" })
        hl("@enum", { l="TSType" })
        hl("@enumMember", { l="Constant" })
        hl("@event", { l="Identifier" })
        hl("@interface", { l="Structure" })
        hl("@modifier", { l="Identifier" })
        hl("@regexp", { l="TSStringRegex" })
        hl("@typeParameter", { l="Type" })
        hl("@decorator", { l="Identifier" })
        -- I have no fucking idea what these are for
        hl("@text", { l="TSText" })
        hl("@text.diff.add", { l="DiffAdd" })
        hl("@text.diff.delete", { l="DiffDelete" })
        hl("@text.strong", { B=true })
        hl("@text.emphasis", { I=true })
        hl("@text.underline", { UL=true })
        hl("@text.strike", { ST=true })
        hl("@text.math", { l="Special" })
        hl("@text.environment", { l="Macro" })
        hl("@text.environment.name", { l="TSType" })
        hl("@text.title", { l="TSTitle" })
        -- nvim-treesitter Markdown Headings APPARENTLY
        hl("@text.title.1.markdown", { l="markdownH1" })
        hl("@text.title.1.marker.markdown", { l="markdownH1Delimiter" })
        hl("@text.title.2.markdown", { l="markdownH2" })
        hl("@text.title.2.marker.markdown", { l="markdownH2Delimiter" })
        hl("@text.title.3.markdown", { l="markdownH3" })
        hl("@text.title.3.marker.markdown", { l="markdownH3Delimiter" })
        hl("@text.title.4.markdown", { l="markdownH4" })
        hl("@text.title.4.marker.markdown", { l="markdownH4Delimiter" })
        hl("@text.title.5.markdown", { l="markdownH5" })
        hl("@text.title.5.marker.markdown", { l="markdownH5Delimiter" })
        hl("@text.title.6.markdown", { l="markdownH6" })
        hl("@text.title.6.marker.markdown", { l="markdownH6Delimiter" })
        hl("@text.uri", { f=p.base09, UL=true })
        hl("@text.todo", { l= "Todo"})
        hl("@text.note", { l="SpecialComment" })
        hl("@text.warning", { l="DiagnosticWarn" })
        hl("@text.danger", { l="DiagnosticError" })
        hl("@text.literal", { f=p.base09 })
        hl("@text.reference", { f=p.base05, I=true })
    end
    if options.lsp_semantic then
        -- LSP Semantic Token p
        hl("@lsp.type.class", { l="@class"})
        hl("@lsp.type.type", { l="@type"})
        hl("@lsp.type.comment", { l="@comment"})
        hl("@lsp.type.enum", { l="@type" })
        hl("@lsp.type.enumMember", { l="@constant" })
        hl("@lsp.type.struct", { l="@struct" })
        hl("@lsp.type.keyword", { l="@keyword" })
        hl("@lsp.type.function", { l="@function" })
        hl("@lsp.type.method", { l="@method" })
        hl("@lsp.type.interface", { l="@interface" })
        hl("@lsp.type.namespace", { l="@namespace" })
        hl("@lsp.type.parameter", { l="@parameter" })
        hl("@lsp.type.property", { l="@property" })
        hl("@lsp.type.variable", { l="@variable" }) -- use treesitter styles for regular variables
        hl("@lsp.type.macro", { l="@macro" })
        hl("@lsp.type.decorator", { l="@decorator" })
        hl("@lsp.typemod.function.defaultLibrary", { l="Special" })
        hl("@lsp.typemod.variable.defaultLibrary", { l="@variable.builtin" })
        -- LSP Injected p
        hl("@lsp.typemod.operator.injected", { l="@operator" })
        hl("@lsp.typemod.string.injected", { l="@string" })
        hl("@lsp.typemod.variable.injected", { l="@variable" })
    end

    vim.g.terminal_color_0 =p.base00
    vim.g.terminal_color_1 =p.base08
    vim.g.terminal_color_2 =p.base0B
    vim.g.terminal_color_3 =p.base0A
    vim.g.terminal_color_4 =p.base0D
    vim.g.terminal_color_5 =p.base0E
    vim.g.terminal_color_6 =p.base0C
    vim.g.terminal_color_7 =p.base05
    vim.g.terminal_color_8 =p.base03
    vim.g.terminal_color_9 =p.base08
    vim.g.terminal_color_10=p.base0B
    vim.g.terminal_color_11=p.base0A
    vim.g.terminal_color_12=p.base0D
    vim.g.terminal_color_13=p.base0E
    vim.g.terminal_color_14=p.base0C
    vim.g.terminal_color_15=p.base07

    -- Set user highlights
    for group, color in pairs(options.highlight_p) do
            hl(group, color)
    end



    -- Git hlghlighting
    hl("gitcommitOverflow", { f=p.base08 })
    hl("gitcommitSummary", { f=p.base0B })
    hl("gitcommitComment", { f=p.base03 })
    hl("gitcommitUntracked", { f=p.base03 })
    hl("gitcommitDiscarded", { f=p.base03 })
    hl("gitcommitSelected", { f=p.base03 })
    hl("gitcommitHeader", { f=p.base0E })
    hl("gitcommitSelectedType", { f=p.base0D })
    hl("gitcommitUnmergedType", { f=p.base0D })
    hl("gitcommitDiscardedType", { f=p.base0D })
    hl("gitcommitBranch", { f=p.base09, B=true })
    hl("gitcommitUntrackedFile", { f=p.base0A })
    hl("gitcommitUnmergedFile", { f=p.base08, B=true })
    hl("gitcommitDiscardedFile", { f=p.base08, B=true })
    hl("gitcommitSelectedFile", { f=p.base0B, B=true })

    -- GitGutter hlghlighting
    hl("GitGutterAdd", { f=p.base0B, b=p.base00 })
    hl("GitGutterChange", { f=p.base0D, b=p.base00 })
    hl("GitGutterDelete", { f=p.base08, b=p.base00 })
    hl("GitGutterChangeDelete", { f=p.base0E, b=p.base00 })

    -- lewis6991/gitsigns.nvim
    hl("GitSignsAdd", { l="DiffAdd" })
    hl("GitSignsChange", { l="DiffChange" })
    hl("GitSignsDelete", { l="DiffDelete" })
    hl("SignAdd", { l="DiffAdd" })
    hl("SignChange", { l="DiffChange" })
    hl("SignDelete", { l="DiffDelete" })

    if options.ts_rainbow then
        hl("rainbowcol1", { f=p.base06 })
        hl("rainbowcol2", { f=p.base09 })
        hl("rainbowcol3", { f=p.base0A })
        hl("rainbowcol4", { f=p.base07 })
        hl("rainbowcol5", { f=p.base0C })
        hl("rainbowcol6", { f=p.base0D })
        hl("rainbowcol7", { f=p.base0E })
    end


    hl("TermCursor", { f=p.base00, b=p.base05 })
    hl("TermCursorNC", { f=p.base00, b=p.base05 })



    if options.telescope then
        hl("TelescopeBorder", { f=p.base05, b=p.base00 })
        hl("TelescopePromptBorder", { f=p.base05, b=p.base00 })
        hl("TelescopePromptNormal", { f=p.base05, b=p.base00 })
        hl("TelescopePromptPrefix", { f=p.base05, b=p.base00 })
        hl("TelescopeNormal", { b=p.base00 })
        hl("TelescopePreviewTitle", { f=p.base01, b=p.base0B })
        hl("TelescopePromptTitle", { f=p.base01, b=p.base08 })
        hl("TelescopeResultsTitle", { f=p.base05, b=p.base00 })
        hl("TelescopeSelection", { b=p.base01 })
        hl("TelescopeSelectionCaret", { f=p.base05, b=p.base02 })
        hl("TelescopeMatching", { f=p.base0D })
        hl("TelescopeTitle", { f=p.base08 })
        hl("TelescopePreviewLine", { b=p.base01 })
    end

    -- goolord/alpha-nvim
    hl("AlphaHeader", { f=p.perror })
    hl("AlphaButtons", { f=p.pinfo })
    hl("AlphaShortcut", { f=p.phint })
    hl("AlphaFooter", { f=p.pwarn })

    if options.notify then
        hl("NotifyERRORBorder", { f=p.base08 })
        hl("NotifyWARNBorder", { f=p.base0E })
        hl("NotifyINFOBorder", { f=p.base05 })
        hl("NotifyDEBUGBorder", { f=p.base0C })
        hl("NotifyTRACEBorder", { f=p.base0C })
        hl("NotifyERRORIcon", { f=p.base08 })
        hl("NotifyWARNIcon", { f=p.base0E })
        hl("NotifyINFOIcon", { f=p.base05 })
        hl("NotifyDEBUGIcon", { f=p.base0C })
        hl("NotifyTRACEIcon", { f=p.base0C })
        hl("NotifyERRORTitle", { f=p.base08 })
        hl("NotifyWARNTitle", { f=p.base0E })
        hl("NotifyINFOTitle", { f=p.base05 })
        hl("NotifyDEBUGTitle", { f=p.base0C })
        hl("NotifyTRACETitle", { f=p.base0C })
        hl("NotifyERRORBody", { l="Normal" })
        hl("NotifyWARNBody", { l="Normal" })
        hl("NotifyINFOBody", { l="Normal" })
        hl("NotifyDEBUGBody", { l="Normal" })
        hl("NotifyTRACEBody", { l="Normal" })
    end

    if options.indentblankline then
        hl("IndentBlanklineChar", { guifg=p.base02, NC=true })
        hl("IndentBlanklineContextChar", { guifg=p.base04, NC=true })
    end

    if options.cmp then
        hl("CmpDocumentationBorder", { f=p.base05, b=p.base00 })
        hl("CmpDocumentation", { f=p.base05, b=p.base00 })
        hl("CmpItemAbbr", { f=p.base05, b=p.base01 })
        hl("CmpItemAbbrDeprecated", { f=p.base03, ST=true })
        hl("CmpItemAbbrMatch", { f=p.base0D })
        hl("CmpItemAbbrMatchFuzzy", { f=p.base0D })
        hl("CmpItemKind", { f=p.base05 })
        hl("CmpItemKindDefault", { f=p.base05 })
        hl("CmpItemMenu", { f=p.base04 })
        hl("CmpItemKindKeyword", { f=p.base0E })
        hl("CmpItemKindVariable", { f=p.base08 })
        hl("CmpItemKindConstant", { f=p.base09 })
        hl("CmpItemKindReference", { f=p.base08 })
        hl("CmpItemKindValue", { f=p.base09 })
        hl("CmpItemKindFunction", { f=p.base0D })
        hl("CmpItemKindMethod", { f=p.base0D })
        hl("CmpItemKindConstructor", { f=p.base0D })
        hl("CmpItemKindClass", { f=p.base0A })
        hl("CmpItemKindInterface", { f=p.base0A })
        hl("CmpItemKindStruct", { f=p.base0A })
        hl("CmpItemKindEvent", { f=p.base0A })
        hl("CmpItemKindEnum", { f=p.base0A })
        hl("CmpItemKindUnit", { f=p.base0A })
        hl("CmpItemKindModule", { f=p.base05 })
        hl("CmpItemKindProperty", { f=p.base08 })
        hl("CmpItemKindField", { f=p.base08 })
        hl("CmpItemKindTypeParameter", { f=p.base0A })
        hl("CmpItemKindEnumMember", { f=p.base0A })
        hl("CmpItemKindOperator", { f=p.base05 })
        hl("CmpItemKindSnippet", { f=p.base04 })

    end


    if options.vimwiki then
        -- vimwiki/vimwiki
        hl("VimwikiHR", { f=p.base04 })
        hl("VimwikiHeaderChar", { f="markdownDelimiter" })
        hl("VimwikiHeader1", { l="markdownH1" })
        hl("VimwikiHeader2", { l="markdownH2" })
        hl("VimwikiHeader3", { l="markdownH3" })
        hl("VimwikiHeader4", { l="markdownH4" })
        hl("VimwikiHeader5", { l="markdownH5" })
        hl("VimwikiHeader6", { l="markdownH6" })
        hl("VimwikiLink", { l="markdownLinkText" })
        hl("VimwikiList", { f="mkdListItemLine" })
        hl("VimwikiNoExistsLink", { f=p.perror })
    end

    if options.neorg then
                -- nvim-neorg/neorg
                    hl("NeorgHeading1Prefix", { l="markdownH1" })
                    hl("NeorgHeading1Title", { l="markdownH1" })
                    hl("NeorgHeading2Prefix", { l="markdownH2" })
                    hl("NeorgHeading2Title", { l="markdownH2" })
                    hl("NeorgHeading3Prefix", { l="markdownH3" })
                    hl("NeorgHeading3Title", { l="markdownH3" })
                    hl("NeorgHeading4Prefix", { l="markdownH4" })
                    hl("NeorgHeading4Title", { l="markdownH4" })
                    hl("NeorgHeading5Prefix", { l="markdownH5" })
                    hl("NeorgHeading5Title", { l="markdownH5" })
                    hl("NeorgHeading6Prefix", { l="markdownH6" })
                    hl("NeorgHeading6Title", { l="markdownH6" })
                    hl("NeorgMarkerTitle", { f=p.base06, B=true })
    end

    if options.illuminate then
        hl("IlluminatedWordText", { UL=true, s=p.base04 })
        hl("IlluminatedWordRead", { UL=true, s=p.base04 })
        hl("IlluminatedWordWrite", { UL=true,  s=p.base04 })
    end


    if options.mini_completion then
        hl("MiniCompletionActiveParameter", { l="CursorLine" })
        hl("MiniIndentscopeSymbol", { f=p.base02 })
        hl("MiniIndentscopeSymbolOff", { f=p.base02 })
    end



    vim.g.base16_gui00     =p.base00
    vim.g.base16_gui01     =p.base01
    vim.g.base16_gui02     =p.base02
    vim.g.base16_gui03     =p.base03
    vim.g.base16_gui04     =p.base04
    vim.g.base16_gui05     =p.base05
    vim.g.base16_gui06     =p.base06
    vim.g.base16_gui07     =p.base07
    vim.g.base16_gui08     =p.base08
    vim.g.base16_gui09     =p.base09
    vim.g.base16_gui0A     =p.base0A
    vim.g.base16_gui0B     =p.base0B
    vim.g.base16_gui0C     =p.base0C
    vim.g.base16_gui0D     =p.base0D
    vim.g.base16_gui0E     =p.base0E
    vim.g.base16_gui0F     =p.base0F

    -- romgrk/barbar.nvim
    if options.barbar then
        hl("BufferCurrent", { f=p.base05, b=p.base03 })
        hl("BufferCurrentIndex", { f=p.base0D, b=p.base03 })
        hl("BufferCurrentMod", { f=p.base0E, b=p.base03 })
        hl("BufferCurrentSign", { f=p.base04, b=p.base03 })
        hl("BufferCurrentTarget", { f=p.base09, b=p.base03 })
        hl("BufferInactive", { f=p.base04, b=p.base02})
        hl("BufferInactiveIndex", { f=p.base0D, b=p.base02})
        hl("BufferInactiveMod", { f=p.base0E, b=p.base02})
        hl("BufferInactiveSign", { f=p.base03, b=p.base02})
        hl("BufferInactiveTarget", { f=p.base09, b=p.base02})
        hl("BufferTabpageFill", { f=p.base00, b=p.base00 })
        hl("BufferVisible", { f=p.base04 })
        hl("BufferVisibleIndex", { f=p.base0D })
        hl("BufferVisibleMod", { f=p.base0E })
        hl("BufferVisibleSign", { f=p.base03 })
        hl("BufferVisibleTarget", { f=p.base09 })
    end


    -- mvllow/modes.nvim
    if options.modes then
                hl("ModesCopy", { b=p.base0E })
                hl("ModesDelete", { b=p.base08 })
                hl("ModesInsert", { b=p.base0B })
                hl("ModesVisual", { b=p.base0A })
    end

    -- kyazdani42/nvim-tree.lua
    -- if options.nvimtree then
    --     hl("NvimTreeEmptyFolderName", { f=p.base03 })
    --     hl("NvimTreeFileDeleted", { f=p.base08 })
    --     hl("NvimTreeFileDirty", { f=p.rose })
    --     hl("NvimTreeFileMerge", { f=p.iris })
    --     hl("NvimTreeFileNew", { f=p.base0B })
    --     hl("NvimTreeFileRenamed", { f=p.base0E })
    --     hl("NvimTreeFileStaged", { f=p.base0E })
    --     hl("NvimTreeFolderIcon", { f=p.base04 })
    --     hl("NvimTreeFolderName", { f=p.base0B })
    --     hl("NvimTreeGitDeleted", { f=p.base08 })
    --     hl("NvimTreeGitDirty", { f=p.git_dirty })
    --     hl("NvimTreeGitIgnored", { f=p.base03 })
    --     hl("NvimTreeGitMerge", { f=p.git_merge })
    --     hl("NvimTreeGitNew", { f=p.base0B })
    --     hl("NvimTreeGitRenamed", { f=p.git_rename })
    --     hl("NvimTreeGitStaged", { f=p.base0E })
    --     hl("NvimTreeImageFile", { f=p.base05 })
    --     hl("NvimTreeNormal", { f=p.base05 })
    --     hl("NvimTreeOpenedFile", { f=p.base05, b=p.base02 })
    --     hl("NvimTreeOpenedFolderName", { l="NvimTreeFolderName" })
    --     hl("NvimTreeRootFolder", { f=p.base0E })
    --     hl("NvimTreeSpecialFile", { l="NvimTreeNormal" })
    --     hl("NvimTreeWindowPicker", { f=p.base08, b=p.base08, blend=10 })
    -- end

    -- -- nvim-neo-tree/neo-tree.nvim
    --     hl("NeoTreeTitleBar", { f=p.surface, b=p.pine })
    --     hl("NeoTreeGitAdded", { f=p.foam })
    --     hl("NeoTreeGitModified", { f=p.rose })
    --     hl("NeoTreeGitDeleted", { f=p.love })
    --     hl("NeoTreeGitRenamed", { f=p.pine })
    --     hl("NeoTreeGitIgnored", { f=p.muted })
    --     hl("NeoTreeGitUntracked", { f=p.gold })
    --     hl("NeoTreeGitConflict", { f=p.iris })
    --
    -- -- folke/which-key.nvim
    --     hl("WhichKey", { f=p.iris })
    --     hl("WhichKeyGroup", { f=p.foam })
    --     hl("WhichKeySeparator", { f=p.subtle })
    --     hl("WhichKeyDesc", { f=p.gold })
    --     hl("WhichKeyFloat", { b=p.surface })
    --     hl("WhichKeyValue", { f=p.rose })
    --
    -- -- luka-reineke/indent-blankline.nvim
    --     hl("IndentBlanklineChar", { f=p.muted, nocombine=true })
    --     hl("IndentBlanklineSpaceChar", { f=p.muted, nocombine=true })
    --     hl("IndentBlanklineSpaceCharBlankline", { f=p.muted, nocombine=true })
    --
    --
    -- -- TimUntersberger/neogit
    --     hl("NeogitDiffAddHighlight", { f=p.foam, b=p.highlight_med })
    --     hl("NeogitDiffContextHighlight", { b=p.highlight_low })
    --     hl("NeogitDiffDeleteHighlight", { f=p.love, b=p.highlight_med })
    --     hl("NeogitHunkHeader", { b=p.highlight_low })
    --     hl("NeogitHunkHeaderHighlight", { b=p.highlight_low })
    --
    --
    --
    -- -- tami5/lspsaga.nvim (fork of glepnir/lspsaga.nvim)
    --     hl("DefinitionCount", { f=p.rose })
    --     hl("DefinitionIcon", { f=p.rose })
    --     hl("DefintionPreviewTitle", { f=p.rose, bold=true })
    --     hl("LspFloatWinBorder", { f=p.border })
    --     hl("LspFloatWinNormal", { b=p.surface })
    --     hl("LspSagaAutoPreview", { f=p.subtle })
    --     hl("LspSagaCodeActionBorder", { f=p.border })
    --     hl("LspSagaCodeActionContent", { f=p.foam })
    --     hl("LspSagaCodeActionTitle", { f=p.gold, bold=true })
    --     hl("LspSagaCodeActionTruncateLine", { l="LspSagaCodeActionBorder" })
    --     hl("LspSagaDefPreviewBorder", { f=p.border })
    --     hl("LspSagaDiagnosticBorder", { f=p.border })
    --     hl("LspSagaDiagnosticHeader", { f=p.gold, bold=true })
    --     hl("LspSagaDiagnosticTruncateLine", { l="LspSagaDiagnosticBorder" })
    --     hl("LspSagaDocTruncateLine", { l="LspSagaHoverBorder" })
    --     hl("LspSagaFinderSelection", { f=p.gold })
    --     hl("LspSagaHoverBorder", { f=p.border })
    --     hl("LspSagaLspFinderBorder", { f=p.border })
    --     hl("LspSagaRenameBorder", { f=p.pine })
    --     hl("LspSagaRenamePromptPrefix", { f=p.love })
    --     hl("LspSagaShTruncateLine", { l="LspSagaSignatureHelpBorder" })
    --     hl("LspSagaSignatureHelpBorder", { f=p.pine })
    --     hl("ReferencesCount", { f=p.rose })
    --     hl("ReferencesIcon", { f=p.rose })
    --     hl("SagaShadow", { b=p.overlay })
    --     hl("TargetWord", { f=p.iris })
    --
    -- -- ray-x/lsp_signature.nvim
    --     hl("LspSignatureActiveParameter", { b=p.overlay })
    --
    -- -- rlane/pounce.nvim
    --     hl("PounceAccept", { f=p.love, b=p.highlight_high })
    --     hl("PounceAcceptBest", { f=p.base, b=p.gold })
    --     hl("PounceGap", { l="Search" })
    --     hl("PounceMatch", { l="Search" })
    --
    --
    -- -- ggandor/leap.nvim
    --     hl("LeapMatch", { l="MatchParen" })
    --     hl("LeapLabelPrimary", { l="IncSearch" })
    --     hl("LeapLabelSecondary", { f=p.base, b=p.pine })
    --
    -- -- phaazon/hop.nvim
    --     hl("HopNextKey", { f=p.love })
    --     hl("HopNextKey1", { f=p.foam })
    --     hl("HopNextKey2", { f=p.pine })
    --     hl("HopUnmatched", { f=p.highlight_high })
    --
    --
    --
    -- -- rcarriga/nvim-dap-ui
    --     hl("DapUIVariable", { l="Normal" })
    --     hl("DapUIValue", { l="Normal" })
    --     hl("DapUIFrameName", { l="Normal" })
    --     hl("DapUIThread", { f=p.gold })
    --     hl("DapUIWatchesValue", { l="DapUIThread" })
    --     hl("DapUIBreakpointsInfo", { l="DapUIThread" })
    --     hl("DapUIBreakpointsCurrentLine", { f=p.gold, bold=true })
    --     hl("DapUIWatchesEmpty", { f=p.love })
    --     hl("DapUIWatchesError", { l="DapUIWatchesEmpty" })
    --     hl("DapUIBreakpointsDisabledLine", { f=p.muted })
    --     hl("DapUISource", { f=p.iris })
    --     hl("DapUIBreakpointsPath", { f=p.foam })
    --     hl("DapUIScope", { l="DapUIBreakpointsPath" })
    --     hl("DapUILineNumber", { l="DapUIBreakpointsPath" })
    --     hl("DapUIBreakpointsLine", { l="DapUIBreakpointsPath" })
    --     hl("DapUIFloatBorder", { l="DapUIBreakpointsPath" })
    --     hl("DapUIStoppedThread", { l="DapUIBreakpointsPath" })
    --     hl("DapUIDecoration", { l="DapUIBreakpointsPath" })
    --     hl("DapUIModifiedValue", { f=p.foam, bold=true })
    --
    -- -- glepnir/dashboard-nvim
    --     hl("DashboardShortcut", { f=p.love })
    --     hl("DashboardHeader", { f=p.pine })
    --     hl("DashboardCenter", { f=p.gold })
    --     hl("DashboardFooter", { f=p.iris })
    --
    -- -- SmiteshP/nvim-navic
    --     hl("NavicIconsFile", { f=p.base })
    --     hl("NavicIconsModule", { f=p.rose })
    --     hl("NavicIconsNamespace", { f=p.base })
    --     hl("NavicIconsPackage", { f=p.base })
    --     hl("NavicIconsClass", { f=p.foam })
    --     hl("NavicIconsMethod", { f=p.iris })
    --     hl("NavicIconsProperty", { f=p.foam })
    --     hl("NavicIconsField", { f=p.foam })
    --     hl("NavicIconsConstructor", { f=p.gold })
    --     hl("NavicIconsEnum", { f=p.gold })
    --     hl("NavicIconsInterface", { f=p.foam })
    --     hl("NavicIconsFunction", { f=p.pine })
    --     hl("NavicIconsVariable", { f=p.text })
    --     hl("NavicIconsConstant", { f=p.gold })
    --     hl("NavicIconsString", { f=p.gold })
    --     hl("NavicIconsNumber", { f=p.gold })
    --     hl("NavicIconsBoolean", { f=p.rose })
    --     hl("NavicIconsArray", { f=p.gold })
    --     hl("NavicIconsObject", { f=p.gold })
    --     hl("NavicIconsKey", { f=p.iris })
    --     hl("NavicIconsKeyword", { f=p.pine })
    --     hl("NavicIconsNull", { f=p.love })
    --     hl("NavicIconsEnumMember", { f=p.foam })
    --     hl("NavicIconsStruct", { f=p.foam })
    --     hl("NavicIconsEvent", { f=p.gold })
    --     hl("NavicIconsOperator", { f=p.subtle })
    --     hl("NavicIconsTypeParameter", { f=p.foam })
    --     hl("NavicText", { f=p.subtle })
    --     hl("NavicSeparator", { f=p.subtle })
    --
    -- -- folke/noice.nvim
    --     hl("NoiceCursor", { f=p.highlight_high, b=p.text })


end

return Theme
