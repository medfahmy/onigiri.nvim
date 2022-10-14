---BUG: line/column guides not changing background of groups behind it
---Takes in a FunctionalVariables dictionary, outputs a colorscheme table.
---@param v FunctionalVariables
---@return {[string]: HighlightDefMap}
local function Theme(v)
    ---@type {[string]: HighlightDefMap }
    local hl = {}

    hl.Normal = { fg = v.Foreground.default, bg = v.Background.default }
    hl.Visual = { bg = v.Background.muted }
    hl.NormalFloat = { bg = v.Background.emphasis }
    hl.FloatBorder = { fg = v.Foreground.surface, bg = v.Background.default }
    hl.Pmenu = { bg = v.Background.emphasis }
    hl.PmenuSel = { bg = v.Background.muted, fg = v.Foreground.emphasis, bold = false }
    hl.PmenuSbar = { bg = hl.Pmenu.bg, fg = hl.PmenuSel.bg }
    hl.PmenuThumb = { bg = hl.PmenuSel.bg }
    hl.NonText = { fg = v.Foreground.surface }
    hl.ColorColumn = { bg = v.Background.default }
    hl.Conceal = { fg = v.Foreground.muted }
    hl.CursorLine = { bg = v.Background.muted }
    hl.CursorColumn = { bg = v.Background.muted }
    hl.LineNr = { bg = v.Background.muted, fg = v.Foreground.emphasis }
    hl.LineNrAbove = { fg = v.Foreground.muted }
    hl.LineNrBelow = { fg = v.Foreground.muted }
    hl.CursorLineNr = { link = 'LineNr' }
    hl.DiffAdd = { sp = v.Colors.Info, underline = true }
    hl.DiffChange = { sp = v.Colors.Error, underline = true }
    hl.DiffDelete = { fg = v.Foreground.muted }
    hl.DiffText = { italic = true }
    hl.Directory = { fg = v.Colors.Hint }
    hl.EndOfBuffer = { fg = v.Foreground.surface }
    hl.Error = { fg = v.Colors.Danger, bg = v.Shade.default }
    hl.ErrorMsg = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.Exception = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.Folded = { fg = v.Foreground.muted, bg = v.Shade.default }
    hl.FoldColumn = { link = 'Comment' }
    hl.ModeMsg = { fg = v.Foreground.default }
    hl.MoreMsg = { fg = v.Foreground.default, bold = true }
    hl.Question = { link = 'MoreMsg' }
    hl.Search = { fg = v.Background.emphasis, bg = v.Colors.Caution }
    hl.IncSearch = { link = 'Search' }
    hl.SignColumn = { fg = v.Foreground.default, bg = v.Background.default }
    hl.SpellBad = { sp = v.Colors.Error, undercurl = true }
    hl.SpellCap = { sp = v.Colors.Caution, undercurl = true }
    hl.SpellLocal = { sp = v.Colors.Hint, undercurl = true }
    hl.SpellRare = { sp = v.Colors.Trace, undercurl = true }
    hl.StatusLine = { fg = v.Foreground.default, bg = v.Background.muted }
    hl.StatusLineNC = { fg = v.Foreground.default, bg = v.Background.emphasis }
    hl.Substitute = { bg = v.Background.muted }
    hl.TabLine = { fg = v.Foreground.default, bg = v.Background.muted }
    hl.TabLineFill = { fg = v.Foreground.default, bg = v.Background.muted }
    hl.TabLineSel = { fg = v.Foreground.default, bg = v.Background.default }
    hl.WarningMsg = { link = 'ErrorMsg' }
    hl.WildMenu = { link = 'Pmenu' }
    hl.Winseparator = { fg = v.Foreground.surface }
    hl.VertSplit = { link = 'Winseparator' }
    hl.DiagnosticError = { fg = v.Colors.Error, bg = 'NONE' }
    hl.DiagnosticSignError = { fg = hl.DiagnosticError.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineError = { sp = hl.DiagnosticError.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextError = { fg = hl.DiagnosticError.fg, bg = 'NONE' }
    hl.DiagnosticHint = { fg = v.Colors.Hint, bg = 'NONE' }
    hl.DiagnosticSignHint = { fg = hl.DiagnosticHint.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineHint = { sp = hl.DiagnosticHint.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextHint = { fg = hl.DiagnosticHint.fg, bg = 'NONE' }
    hl.DiagnosticInfo = { fg = v.Colors.Info, bg = 'NONE' }
    hl.DiagnosticSignInfo = { fg = hl.DiagnosticInfo.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineInfo = { sp = hl.DiagnosticInfo.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextInfo = { fg = hl.DiagnosticInfo.fg, bg = 'NONE' }
    hl.DiagnosticWarn = { fg = v.Colors.Caution, bg = 'NONE' }
    hl.DiagnosticSignWarn = { fg = hl.DiagnosticWarn.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineWarn = { sp = hl.DiagnosticWarn.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextWarn = { fg = hl.DiagnosticWarn.fg, bg = 'NONE' }
    hl.Boolean = { fg = v.Colors.Error, italic = true, bg = v.Shade.default }
    hl.MatchParen = { bold = true, bg = v.Shade.default }
    hl.Character = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.String = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.Comment = { fg = v.Foreground.muted, bg = v.Shade.default }
    hl.Conditional = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.Constant = { fg = v.Foreground.emphasis, bg = v.Shade.default }
    hl.Define = { fg = v.Colors.Trace, italic = true, bg = v.Shade.default }
    hl.Delimiter = { fg = v.Foreground.muted, bg = v.Shade.emphasis }
    hl.Number = { fg = v.Colors.Important, bg = v.Shade.default }
    hl.Float = { link = 'Number' }
    hl.Function = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.Identifier = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.Include = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.PreCondit = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.Keyword = { fg = v.Colors.Trace, italic = true, bg = v.Shade.default }
    hl.Label = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.Macro = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.Operator = { fg = v.Colors.Danger, bg = v.Shade.default }
    hl.PreProc = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.Repeat = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.Special = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.SpecialChar = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.SpecialComment = { link = 'Comment' }
    hl.SpecialKey = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.Statement = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.StorageClass = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.Structure = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.Struct = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.Typedef = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.Tag = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.Title = { fg = v.Foreground.default, bold = true, bg = v.Shade.default }
    hl.Todo = { fg = v.Colors.Note, bold = true, bg = v.Shade.default }
    hl.Type = { fg = v.Colors.Caution, bg = v.Shade.default }
    hl.Underlined = { underdotted = true }
    hl.Whitespace = { fg = v.Foreground.surface }
    hl.TSPunctBracket = { fg = v.Foreground.emphasis, bg = v.Shade.default }
    hl.TSPunctDelimiter = { link = 'Delimiter', bg = v.Shade.emphasis }
    hl.TSPunctSpecial = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.TSConstant = { link = 'Constant' }
    hl.TSConstBuiltin = { fg = v.Colors.Error, bg = v.Shade.default, italic = true }
    hl.TSConstMacro = { link = 'Define' }
    hl.TSString = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.TSStringRegex = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.TSStringEscape = { link = 'SpecialChar' }
    hl.TSStringSpecial = { link = 'SpecialChar' }
    hl.TSCharacter = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.TSCharacterSpecial = { link = 'SpecialChar' }
    hl.TSNumber = { link = 'Number' }
    hl.TSBoolean = { link = 'Boolean' }
    hl.TSFloat = { link = 'Float' }
    hl.TSFunction = { link = 'Function' }
    hl.TSFunctionCall = { fg = v.Colors.Note, bg = v.Shade.default }
    hl.TSFuncBuiltin = { fg = v.Colors.Note, italic = true, bg = v.Shade.default }
    hl.TSFuncMacro = { fg = v.Colors.Note, bg = v.Shade.default }
    hl.TSParameter = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.TSParameterReference = { link = 'TSParameter' }
    hl.TSMethod = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.TSMethodCall = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.TSField = { fg = v.Colors.Accent, bg = v.Shade.default }
    hl.TSComment = { fg = v.Foreground.muted, bg = v.Shade.default }
    hl.TSDanger = { fg = v.Colors.Error, bold = true, bg = v.Shade.default }
    hl.TSEmphasis = { italic = true }
    hl.TSEnum = { link = 'TSType' }
    hl.TSError = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.TSInclude = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.TSInterface = { link = 'TSType' }
    hl.TSKeyword = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.TSKeywordFunction = { fg = v.Colors.Trace, italic = true, bg = v.Shade.default }
    hl.TSKeywordOperator = { fg = v.Colors.Danger, bg = v.Shade.default }
    hl.TSKeywordReturn = { link = 'TSKeyword', bg = v.Shade.default }
    hl.TSLabel = { fg = v.Colors.Hint, bg = v.Shade.default }

    hl.TSNamespace = { fg = v.Colors.Caution, bg = v.Shade.default }

    hl.TSNote = { fg = v.Colors.Info, bold = true, bg = v.Shade.default }
    hl.TSOperator = { link = 'Operator' }
    hl.TSProperty = { fg = v.Colors.Accent, bg = v.Shade.default }
    hl.TSStrong = { bold = true }
    hl.TSSymbol = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.TSTag = { link = 'Tag' }
    hl.TSTagAttribute = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.TSTagDelimiter = { fg = v.Colors.Hint, bg = v.Shade.emphasis }
    hl.TSText = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.TSTextReference = { fg = v.Foreground.default, underdotted = false }
    hl.TSTitle = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.TSTodo = { link = 'Todo' }
    hl.TSType = { link = 'Type' }
    hl.TSTypeBuiltin = { fg = v.Colors.Note, italic = true, bg = v.Shade.default }
    hl.TSTypeQualifier = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.TSURI = { fg = v.Colors.Note, underdotted = true, bg = v.Shade.default }
    hl.TSUnderline = { underline = true }
    hl.TSVariable = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.TSVariableBuiltin = { fg = v.Colors.Error, italic = true }
    hl.TSWarning = { fg = v.Colors.Caution, bold = true, bg = v.Shade.default }
    hl.TSLiteral = { fg = v.Colors.Info, italic = true, bg = v.Shade.default }
    hl.htmlTagName = { link = 'Tag' }
    hl.gitCommitSelectedFile = { italic = true }
    hl.gitCommitSummary = { bold = true }
    hl.gitCommitTrailerToken = { fg = v.Colors.Trace, italic = true }
    hl.healthHelp = { fg = v.Colors.Important, bg = v.Shade.default }
    hl.healthSuccess = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.luaTable = { link = 'TSPunctBracket' }
    hl.markdownRule = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.markdownLinkText = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.markdownUrl = { fg = v.Colors.Note, underline = true, bg = v.Shade.default }
    hl.markdownLinkDelimiter = { fg = v.Colors.Hint, bg = v.Shade.emphasis }
    hl.markdownH1Delimiter = { fg = v.Colors.Danger, bg = v.Shade.emphasis, bold = false }
    hl.markdownH2Delimiter = { fg = v.Colors.Danger, bg = v.Shade.emphasis, bold = false }
    -- hl.markdownH3Delimiter = { fg = Caution, bg = Shade.emphasis, bold = false }
    -- hl.markdownH4Delimiter = { fg = Caution, bg = Shade.emphasis, bold = false }
    -- hl.markdownH5Delimiter = { fg = Caution, bg = Shade.emphasis, bold = false }
    -- hl.markdownH6Delimiter = { fg = Caution, bg = Shade.emphasis, bold = false }
    hl.markdownCode = { bg = v.Background.surface }
    hl.markdownCodeDelimiter = { fg = v.Colors.Note, bg = v.Shade.emphasis }
    hl.markdownListMarker = { fg = v.Colors.Important, bg = v.Shade.default }
    hl.qfFileName = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.qfLineNr = { bold = true }
    hl.tmuxCommands = { fg = v.Colors.Trace }
    hl.tmuxFlags = { fg = v.Colors.Caution }
    hl.tmuxFormatString = { fg = v.Colors.Hint }
    hl.javaScriptReserved = { fg = v.Colors.Error }
    hl.fennelTSFuncMacro = { link = 'TSKeywordFunction' }
    hl.fennelTSField = { link = 'TSField' }
    hl.FennelStringDelimiter = { fg = v.Colors.Hint }
    hl.FennelParen = { link = 'TSPunctBracket' }
    hl.FennelSpecialForm = { fg = v.Colors.Trace, italic = true }
    hl.FennelKeyword = { link = 'TSKeyword' }
    hl.FennelTable = { link = 'TSConstructor' }
    hl.tomlproperty = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.yamlfield = { fg = v.Colors.Hint, bg = v.Shade.default }
    hl.jsonKeyword = { fg = v.Colors.Hint, bg = v.Shade.default }

    hl.helpHyperTextEntry = { link = 'TSURI' }
    hl.helpSectionDelim = { fg = v.Colors.Error, bold = true, bg = v.Shade.default }
    hl.helpHyperTextJump = { fg = v.Colors.Note, underdotted = true, bg = v.Shade.default }
    hl.helpHeader = { link = 'Title' }
    hl.helpExample = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.helpURL = { fg = v.Colors.Note, underline = true, bg = v.Shade.default }
    hl.helpCommand = { bg = v.Foreground.surface }

    hl.rainbowcol1 = { fg = v.Foreground.default, bg = v.Shade.emphasis }
    hl.rainbowcol2 = { fg = v.Colors.Trace, bg = v.Shade.emphasis }
    hl.rainbowcol3 = { fg = v.Colors.Info, bg = v.Shade.emphasis }
    hl.rainbowcol4 = { fg = v.Colors.Error, bg = v.Shade.emphasis }
    hl.rainbowcol5 = { fg = v.Colors.Hint, bg = v.Shade.emphasis }
    hl.rainbowcol6 = { fg = v.Colors.Important, bg = v.Shade.emphasis }
    hl.rainbowcol7 = { fg = v.Colors.Warn, bg = v.Shade.emphasis }

    hl.IndentBlanklineContextChar = { fg = v.Foreground.muted, bg = 'NONE' }
    hl.IndentBlanklineContextStart = { sp = v.Foreground.muted, underdotted = true }
    hl.IndentBlanklineSpaceCharBlankline = { link = 'NonText' }
    hl.IndentBlanklineSpaceChar = { link = 'NonText' }

    hl.CmpItemAbbrDeprecated = { strikethrough = true }
    hl.CmpItemKindStruct = { fg = v.Colors.Caution }
    hl.CmpItemKindFunction = { fg = v.Colors.Note }
    hl.CmpItemKindText = { fg = v.Foreground.default }
    hl.CmpItemKindClass = { fg = v.Colors.Caution }
    hl.CmpItemKindValue = { fg = v.Colors.Danger }
    hl.CmpItemKindEnum = { fg = v.Colors.Caution }
    hl.CmpItemKindInterface = { fg = v.Colors.Caution }
    hl.CmpItemKindMethod = { fg = v.Colors.Hint }
    hl.CmpItemKindUnit = { fg = v.Colors.Error }
    hl.CmpItemKindConstant = { fg = v.Foreground.emphasis }
    hl.CmpItemKindField = { fg = v.Colors.Note }
    hl.CmpItemKindModule = { fg = v.Colors.Caution }
    hl.CmpItemKindKeyword = { fg = v.Colors.Trace }
    hl.CmpItemKindEnumMember = { fg = v.Colors.Accent }
    hl.CmpItemKindProperty = { fg = v.Colors.Note }
    hl.CmpItemKindOperator = { fg = v.Colors.Danger }
    hl.CmpItemKindReference = { fg = v.Foreground.default }
    hl.CmpItemKindSnippet = { fg = v.Foreground.emphasis }
    hl.CmpItemKindTypeParameter = { fg = v.Colors.Caution }
    hl.CmpItemKindVariable = { fg = v.Foreground.default }

    hl.Sneak = { fg = v.Background.emphasis, bg = v.Colors.Caution, bold = true }
    hl.SneakLabel = { fg = v.Background.emphasis, bg = v.Colors.Caution, bold = true }

    hl.GitSignsDelete = { fg = v.Colors.Error, bold = true }
    hl.GitSignsChange = { fg = v.Colors.Important, bold = true }
    hl.GitSignsAdd = { fg = v.Colors.Info, bold = true }

    hl.packerHash = { fg = v.Colors.Error }
    hl.packerString = { fg = v.Colors.Info }
    hl.packerStatusSuccess = { fg = v.Colors.Info }

    hl.LspReferenceText = { bg = v.Background.emphasis }
    hl.LspReferenceRead = { bg = v.Background.emphasis }
    hl.LspReferenceWrite = { bg = v.Background.emphasis }

    hl.TelescopeBorder = { fg = v.Foreground.surface }
    hl.TelescopeTitle = { fg = v.Foreground.default, bold = true }
    hl.TelescopePromptCounter = { fg = v.Foreground.default }
    hl.TelescopeMatching = { bg = v.Background.default }
    hl.TelescopeSelectionCaret = { fg = v.Foreground.default }
    hl.TelescopeSelection = { bg = v.Background.muted }

    hl.FloatTitle = { fg = v.Foreground.muted }
    hl.FocusedSymbol = { bg = v.Background.muted }
    hl.TroubleIndent = { bg = v.Background.default }
    hl.TroubleLocation = { bold = true }

    hl.NvimTreeNormal = { fg = v.Foreground.default, bg = v.Background.emphasis }
    hl.NvimTreeRootFolder = { fg = v.Foreground.default, bg = v.Background.emphasis }
    hl.NvimTreeIndentMarker = { fg = v.Foreground.default, bg = v.Background.emphasis }
    hl.NvimTreeOpenedFolderName = { underdotted = true }
    hl.NvimTreeFolderName = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NvimTreeEmptyFolderName = { link = 'Comment' }
    hl.NvimTreeFolderIcon = { fg = v.Foreground.muted }
    hl.NvimTreeExecFile = { fg = v.Colors.Info, bold = true, bg = v.Shade.default }
    hl.NvimTreeFileDeleted = { link = 'Comment' }
    hl.NvimTreeFileNew = { fg = v.Background.emphasis, bg = v.Shade.default }
    hl.NvimTreeSpecialFile = { fg = v.Foreground.default, bg = v.Shade.default }

    hl.NvimTreeGitDirty = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.NvimTreeGitStaged = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.NvimTreeGitRenamed = { fg = v.Colors.Caution, bg = v.Shade.default }
    hl.NvimTreeGitDeleted = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.NvimTreeSymlink = { fg = v.Colors.Hint, bg = v.Shade.default }

    hl.NotifyERRORBorder = { fg = hl.DiagnosticError.fg }
    hl.NotifyWARNBorder = { fg = hl.DiagnosticWarn.fg }
    hl.NotifyINFOBorder = { fg = hl.DiagnosticInfo.fg }
    hl.NotifyDEBUGBorder = { fg = v.Colors.Danger, bg = v.Shade.default }
    hl.NotifyTRACEBorder = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.NotifyERRORIcon = { fg = hl.DiagnosticError.fg }
    hl.NotifyWARNIcon = { fg = hl.DiagnosticWarn.fg }
    hl.NotifyINFOIcon = { fg = hl.DiagnosticInfo.fg }
    hl.NotifyDEBUGIcon = { fg = v.Colors.Danger, bg = v.Shade.default }
    hl.NotifyTRACEIcon = { fg = v.Colors.Trace, bg = v.Shade.default }
    hl.NotifyERRORTitle = { fg = hl.DiagnosticError.fg, bold = true }
    hl.NotifyWARNTitle = { fg = hl.DiagnosticWarn.fg, bold = true }
    hl.NotifyINFOTitle = { fg = hl.DiagnosticInfo.fg, bold = true }
    hl.NotifyDEBUGTitle = { fg = v.Colors.Danger, bold = true, bg = v.Shade.default }
    hl.NotifyTRACETitle = { fg = v.Colors.Trace, bold = true, bg = v.Shade.default }
    hl.NotifyERRORBody = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NotifyWARNBody = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NotifyINFOBody = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NotifyDEBUGBody = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NotifyTRACEBody = { fg = v.Foreground.default, bg = v.Shade.default }

    hl.DevIconGitAttributes = { fg = v.Colors.Hint }
    hl.DevIconGitCommit = { fg = v.Colors.Error }
    hl.DevIconGitConfig = { fg = v.Colors.Hint }
    hl.DevIconGitIgnore = { fg = v.Colors.Error }
    hl.DevIconGitModules = { fg = v.Colors.Hint }
    hl.DevIconDropbox = { fg = v.Colors.Note }
    hl.DevIconToml = { fg = v.Colors.Hint }
    hl.DevIconYaml = { link = 'DevIconToml' }
    hl.DevIconJson = { fg = v.Colors.Caution }
    hl.DevIconYml = { link = 'DevIconToml' }
    hl.DevIconMd = { fg = v.Foreground.emphasis }
    hl.DevIconGo = { fg = v.Colors.Note }
    hl.DevIconTs = { fg = v.Colors.Note }
    hl.DevIconTsx = { fg = v.Colors.Note }
    hl.DevIconDsStore = { fg = v.Foreground.muted }
    hl.DevIconDockerfile = { fg = v.Colors.Note }
    hl.DevIconScheme = { fg = v.Foreground.emphasis }

    hl.LspNamespace = { link = 'TSNamespace' }
    hl.LspType = { link = 'TSType' }
    hl.LspClass = { link = 'TSType' }
    hl.LspEnum = { link = 'TSType' }
    hl.LspInterface = { link = 'TSType' }
    hl.LspStruct = { link = 'TSType' }
    hl.LspTypeParameter = { link = 'TSType' }
    hl.LspParameter = { link = 'TSParameter' }
    hl.LspVariable = { link = 'TSVariable' }
    hl.LspProperty = { link = 'TSProperty' }
    hl.LspEnumMember = { link = 'TSField' }
    -- hl.LspEvent   = {}
    hl.LspFunction = { link = 'TSFunctionCall' }
    hl.LspMethod = { link = 'TSMethod' }
    hl.LspMacro = { link = 'Macro' }
    hl.LspKeyword = { fg = v.Colors.Danger }
    -- LspModifier   = {}
    hl.LspComment = { link = 'TSComment' }
    hl.LspString = { link = 'TSString' }
    hl.LspNumber = { link = 'TSNumber' }
    hl.LspRegexp = { link = 'TSStringRegex' }
    -- LspDeclaration = { link = 'TSType' }
    -- LspDefinition  = {}
    -- hl.LspOperator = { link = 'TSOperator' }
    hl.LspReadonly = { italic = true }
    hl.LspStatic = { italic = true }
    hl.LspDeprecated = { strikethrough = true }
    -- LspAbstract = {}
    -- LspAsync = { bold = true }
    -- LspModification  = {}
    -- LspDocumentation = {}
    -- hl.LspDefaultLibrary = { link = 'TSNamespace' }
    --- FzfLua
    hl.FzfLuaNormal = { fg = v.Foreground.default, bg = v.Background.default }
    hl.FzfLuaBorder = { fg = v.Foreground.surface, bg = v.Background.default }
    hl.FzfLuaCursor = { fg = v.Foreground.default, bg = v.Background.default }
    hl.FzfLuaSearch = { link = 'Search' }
    hl.FzfLuaTitle = { fg = v.Foreground.default, bold = true }
    hl.FzfLuaCursorLine = { link = 'CursorLine' }
    hl.FzfLuaCursorLineNr = { link = 'CursorLineNr' }
    --- TSExtended
    hl.TSExtStringDelimiter = { fg = v.Colors.Note, bg = v.Shade.default }
    hl.TSExtYamlField = { fg = v.Colors.Hint, bg = v.Shade.default }
    return hl
end

return {
    Theme = Theme,
}
