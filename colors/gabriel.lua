local g = vim.g

local api = vim.api
local cmd = vim.cmd

local colors = {
  black       = '#000000',
  darkred     = '#884444',
  darkgreen   = '#779966',
  darkyellow  = '#AA8844',
  darkblue    = '#447799',
  darkmagenta = '#666699',
  darkcyan    = '#449999',
  gray        = '#CCCCCC',
  darkgray    = '#444444',
  red         = '#884444',
  green       = '#779966',
  yellow      = '#AA8844',
  blue        = '#447799',
  magenta     = '#666699',
  cyan        = '#449999',
  white       = '#FFFFFF',
}

local faded_colors = {
  red    = "#d7cccc",
  yellow = "#dfd9ce",
  cyan   = "#d0dcdc",
}

local grayscale = {
  gray0  = '#ffffff',
  gray1  = '#eeeeee',
  gray2  = '#dddddd',
  gray3  = '#cccccc',
  gray4  = '#bbbbbb',
  gray5  = '#aaaaaa',
  gray6  = '#999999',
  gray7  = '#888888',
  gray8  = '#777777',
  gray9  = '#666666',
  gray10 = '#555555',
  gray11 = '#444444',
  gray12 = '#333333',
  gray13 = '#222222',
  gray14 = '#111111',
  gray15 = '#000000',
}

local ui = {
  background = '#eeeeee',
  foreground = '#000000',
}

if vim.o.background == 'dark' then
  colors.black        = '#000000'
  colors.darkred      = '#aa6666'
  colors.darkgreen    = '#99bb88'
  colors.darkyellow   = '#ccaa66'
  colors.darkblue     = '#6699bb'
  colors.darkmagenta  = '#8888bb'
  colors.darkcyan     = '#66bbbb'
  colors.gray         = '#cccccc'
  colors.darkgray     = '#444444'
  colors.red          = '#aa6666'
  colors.green        = '#99bb88'
  colors.yellow       = '#ccaa66'
  colors.blue         = '#6699bb'
  colors.magenta      = '#8888bb'
  colors.cyan         = '#66bbbb'
  colors.white        = '#ffffff'

  faded_colors.red    = "#2e2323"
  faded_colors.yellow = "#363024"
  faded_colors.cyan   = "#273333"

  grayscale.gray0     = '#000000'
  grayscale.gray1     = '#111111'
  grayscale.gray2     = '#222222'
  grayscale.gray3     = '#333333'
  grayscale.gray4     = '#444444'
  grayscale.gray5     = '#555555'
  grayscale.gray6     = '#666666'
  grayscale.gray7     = '#777777'
  grayscale.gray8     = '#888888'
  grayscale.gray9     = '#999999'
  grayscale.gray10    = '#aaaaaa'
  grayscale.gray11    = '#bbbbbb'
  grayscale.gray12    = '#cccccc'
  grayscale.gray13    = '#dddddd'
  grayscale.gray14    = '#eeeeee'
  grayscale.gray15    = '#ffffff'

  ui.background       = '#111111'
  ui.foreground       = '#ffffff'
end

local highlights = {
  -- Initial
  ['Normal'] = {},

  -- Default Highlight Groups
  ['ColorColumn'] = { fg = ui.foreground },
  ['Comment'] = { fg = grayscale.gray9 },
  ['Conceal'] = { fg = ui.foreground },
  ['Constant'] = { fg = colors.magenta },
  ['Cursor'] = { fg = ui.foreground },
  ['CursorColumn'] = { fg = ui.foreground },
  ['CursorIM'] = { link = 'Cursor' },
  ['CursorLine'] = { bg = grayscale.gray2 },
  ['CursorLineNr'] = { fg = grayscale.gray11 },
  ['DiffAdd'] = { fg = ui.foreground },
  ['DiffChange'] = { fg = ui.foreground },
  ['DiffDelete'] = { fg = ui.foreground },
  ['DiffText'] = { fg = ui.foreground },
  ['Directory'] = { fg = grayscale.gray11 },
  ['EndOfBuffer'] = { link = 'NonText' },
  ['Error'] = { fg = colors.red },
  ['ErrorMsg'] = { fg = ui.foreground },
  ['ErrorStrong'] = { bg = grayscale.gray2, fg = colors.red, bold = true },
  ['FloatBorder'] = { fg = grayscale.gray6 },
  ['FoldColumn'] = { fg = ui.foreground },
  ['Folded'] = { fg = ui.foreground },
  ['Foreground'] = { fg = ui.foreground },
  ['Identifier'] = { fg = colors.red },
  ['Ignore'] = { fg = grayscale.gray9 },
  ['IncSearch'] = { bg = grayscale.gray4 },
  ['LineNr'] = { fg = grayscale.gray9 },
  ['MatchParen'] = { fg = ui.foreground },
  ['ModeMsg'] = { fg = ui.foreground },
  ['MoreMsg'] = { fg = ui.foreground },
  ['NonText'] = { fg = ui.background },
  ['NormalFloat'] = { link = 'Normal' },
  ['Number'] = { link = 'Constant' },
  ['Pmenu'] = { fg = grayscale.gray9 },
  ['PmenuSbar'] = { fg = ui.foreground },
  ['PmenuSel'] = { bg = grayscale.gray2, fg = ui.foreground },
  ['PmenuThumb'] = { fg = ui.foreground },
  ['PreProc'] = { fg = colors.red },
  ['Question'] = { fg = ui.foreground },
  ['QuickFixLine'] = { fg = ui.foreground },
  ['Search'] = { fg = ui.foreground },
  ['SignColumn'] = { fg = ui.foreground },
  ['Special'] = { fg = ui.foreground },
  ['SpecialKey'] = { fg = ui.foreground },
  ['SpellBad'] = { fg = ui.foreground },
  ['SpellCap'] = { fg = ui.foreground },
  ['SpellLocal'] = { fg = ui.foreground },
  ['SpellRare'] = { fg = ui.foreground },
  ['Statement'] = { fg = colors.red },
  ['StatusBackground'] = { fg = ui.background },
  ['StatusError'] = { fg = colors.red, bold = true },
  ['StatusFileEncoding'] = { fg = colors.cyan, bold = true },
  ['StatusFileLocation'] = { fg = colors.magenta, bold = true },
  ['StatusFileModified'] = { fg = colors.yellow, bold = true },
  ['StatusFileName'] = { fg = colors.blue, bold = true },
  ['StatusFileReadonly'] = { fg = colors.yellow, bold = true },
  ['StatusFileType'] = { fg = colors.green, bold = true },
  ['StatusLine'] = { fg = grayscale.gray11 },
  ['StatusLineNC'] = { fg = grayscale.gray9 },
  ['StatusLineTerm'] = { link = 'StatusLine' },
  ['StatusLineTermNC'] = { link = 'StatusLineNC' },
  ['StatusText'] = { fg = colors.white },
  ['StatusWarning'] = { fg = colors.yellow, bold = true },
  ['String'] = { fg = colors.blue },
  ['TabLine'] = { fg = grayscale.gray11 },
  ['TabLineFill'] = {},
  ['TabLineSel'] = { fg = ui.foreground },
  ['TabLineTitle'] = { fg = grayscale.gray9 },
  ['TabLineTitleActive'] = { fg = colors.blue, bold = true },
  ['Terminal'] = { link = 'Normal' },
  ['Title'] = { fg = ui.foreground },
  ['Todo'] = { fg = ui.foreground, bold = true },
  ['ToolbarButton'] = { fg = ui.foreground },
  ['ToolbarLine'] = { fg = ui.foreground },
  ['Type'] = { fg = colors.red },
  ['Underlined'] = { fg = ui.foreground },
  ['VertSplit'] = { fg = ui.background },
  ['VimAutoEvent'] = { fg = colors.blue },
  ['VimFunction'] = { fg = colors.magenta },
  ['VimHiGroup'] = { fg = colors.blue },
  ['VimVar'] = { fg = colors.white },
  ['Visual'] = { bg = grayscale.gray2 },
  ['VisualNOS'] = { bg = grayscale.gray2 },
  ['WarningMsg'] = { fg = colors.yellow },
  ['WarningStrong'] = { bg = grayscale.gray2, fg = colors.yellow, bold = true },
  ['WildMenu'] = { fg = ui.foreground },
  ['debugBreakpoint'] = { fg = ui.foreground },
  ['debugPC'] = { fg = ui.foreground },
  ['helpLeadBlank'] = { fg = ui.foreground },
  ['helpNormal'] = { fg = ui.foreground },
  ['vimBracket'] = { fg = colors.magenta },
  ['vimMapMod'] = { fg = colors.blue },
  ['vimMapModKey'] = { fg = colors.blue },
  ['vimNotation'] = { fg = colors.magenta },
  ['vimVar'] = { fg = colors.magenta },

  -- Config
  ['configfunction'] = { link = 'Normal' },

  -- HTML
  ['htmlTag'] = { link = 'Normal' },
  ['htmlEndTag'] = { link = 'Normal' },
  ['htmlArg'] = { link = 'Constant' },
  ['htmlTagName'] = { link = 'String' },

  -- JSON & JSONC
  ['jsonNull'] = { link = 'Constant' },
  ['jsonQuote'] = { link = 'String' },
  ['jsonKeyword'] = { link = 'jsonQuote' },
  ['jsoncNull'] = { link = 'Constant' },
  ['jsoncKeywordMatch'] = { link = 'jsonKeyword' },
  ['jsoncBraces'] = { link = 'Normal' },

  -- JavaScript
  ['jsNull'] = { link = 'Constant' },
  ['jsThis'] = { link = 'Constant' },
  ['jsParen'] = { link = 'Normal' },
  ['jsFuncName'] = { link = 'Constant' },
  ['jsFuncCall'] = { link = 'Constant' },
  ['jsDocTags'] = { link = 'Identifier' },
  ['jsDocType'] = { link = 'String' },
  ['jsDocTypeBrackets'] = { link = 'String' },
  ['jsTemplateBraces'] = { link = 'String' },
  ['jsDocParam'] = { link = 'Normal' },
  ['jsGlobalNodeObjects'] = { link = 'String' },
  ['jsObjectProp'] = { link = 'Constant' },
  ['jsVariableDef'] = { link = 'Constant' },
  ['jsArrowFunction'] = { link = 'Identifier' },
  ['jsFuncBlock'] = { link = 'Normal' },
  ['jsClassDefinition'] = { link = 'Constant' },
  ['jsDecoratorFunction'] = { link = 'Normal' },
  ['jsDestructuringBlock'] = { link = 'Constant' },
  ['javaScriptNull'] = { link = 'Constant' },
  ['javaScriptBraces'] = { link = 'Normal' },
  ['javaScriptNull'] = { link = 'Constant' },

  -- JSX
  ['jsxAttrib'] = { link = 'Constant' },
  ['jsxTagName'] = { link = 'String' },
  ['jsxOpenPunct'] = { link = 'Normal' },
  ['jsxClosePunct'] = { link = 'Normal' },
  ['jsxCloseString'] = { link = 'Normal' },
  ['jsxElement'] = { link = 'String' },
  ['jsxComponentName'] = { link = 'String' },

  -- TypeScript
  ['typescriptImport'] = { link = 'Identifier' },
  ['typescriptExport'] = { link = 'Identifier' },
  ['typescriptAbstract'] = { link = 'Identifier' },
  ['typescriptAliasDeclaration'] = { link = 'String' },
  ['typescriptClassName'] = { link = 'String' },
  ['typescriptTypeParameter'] = { link = 'String' },
  ['typescriptPredefinedType'] = { link = 'String' },
  ['typescriptClassHeritage'] = { link = 'Constant' },
  ['typescriptTypeReference'] = { link = 'String' },
  ['typescriptTypeAnnotation'] = { link = 'Normal' },
  ['typescriptAssign'] = { link = 'Operator' },
  ['typescriptMember'] = { link = 'Normal' },
  ['typescriptEndColons'] = { link = 'Normal' },
  ['typescriptDocTags'] = { link = 'Identifier' },
  ['typescriptDocNotation'] = { link = 'Identifier' },
  ['typescriptFuncComma'] = { link = 'Normal' },
  ['typescriptFuncName'] = { link = 'Constant' },
  ['typescriptCall'] = { link = 'Normal' },
  ['typescriptBraces'] = { link = 'javaScriptBraces' },
  ['typescriptIdentifier'] = { link = 'Constant' },
  ['typescriptGlobal'] = { link = 'String' },
  ['typescriptProp'] = { link = 'Constant' },
  ['typescriptBOMWindowMethod'] = { link = 'Constant' },
  ['typescriptCacheMethod'] = { link = 'Constant' },
  ['typescriptBinaryOp'] = { link = 'Operator' },
  ['typescriptHeadersMethod'] = { link = 'Constant' },
  ['typescriptJSONStaticMethod'] = { link = 'String' },
  ['typescriptTemplateSB'] = { link = 'String' },
  ['typescriptObjectLabel'] = { link = 'Normal' },
  ['typescriptArrowFuncArg'] = { link = 'Normal' },
  ['typescriptPaymentMethod'] = { link = 'Constant' },
  ['typescriptIdentifierName'] = { link = 'String' },
  ['typescriptVariableDeclaration'] = { link = 'Constant' },

  -- YAML
  ['yamlPlainScalar'] = { link = 'String' },
  ['yamlBlockMappingKey'] = { link = 'String' },
  ['yamlBlockCollectionItemStart'] = { link = 'Normal' },

  -- Vim
  ['vimOption'] = { link = 'String' },
  ['vimCommand'] = { link = 'Identifier' },
  ['vimFunction'] = { link = 'Identifier' },

  -- Git
  ['gitcommitSummary'] = { link = 'Normal' },
  ['gitcommitOverflow'] = { link = 'Error' },

  -- Lua
  ['luaTable'] = { link = 'Normal' },

  -- Python
  ['pythonFunction'] = { link = 'String' },
  ['pythonFunctionCall'] = { link = 'Normal' },
  ['pythonClass'] = { link = 'String' },
  ['pythonClassVar'] = { link = 'Constant' },
  ['pythonDecorator'] = { link = 'Constant' },
  ['pythonDottedName'] = { link = 'Constant' },
  ['pythonBuiltinType'] = { link = 'String' },
  ['pythonBuiltinFunc'] = { link = 'String' },
  ['pythonStrFormat'] = { link = 'Constant' },

  -- CoC
  ['CocErrorSign'] = { fg = colors.red },
  ['CocExplorerFileFilename'] = { link = 'Directory' },
  ['CocExplorerFileFullpath'] = { link = 'Directory' },
  ['CocExplorerFileRootName'] = { link = 'Directory' },
  ['CocExplorerGitContentChange'] = { fg = colors.yellow },
  ['CocExplorerGitPathChange'] = { fg = colors.green },
  ['CocInfoSign'] = { fg = colors.yellow },
  ['CocWarningSign'] = { fg = colors.yellow },

  -- Signify
  ['SignifySignAdd'] = { fg = colors.green },
  ['SignifySignDelete'] = { fg = colors.red },
  ['SignifySignChange'] = { fg = colors.yellow },

  -- Telescope
  ['TelescopeBorder'] = { link = 'FloatBorder' },
  ['TelescopePromptBorder'] = { link = 'FloatBorder' },
  ['TelescopeResultsBorder'] = { link = 'FloatBorder' },
  ['TelescopePreviewBorder'] = { link = 'FloatBorder' },

  -- IndentBlankline
  ['IndentBlanklineChar'] = { fg = grayscale.gray9 },

  -- ZSH
  ['zshVariableDef'] = { link = 'Constant' },
  ['zshFunction'] = { link = 'Constant' },
  ['zshDeref'] = { link = 'Constant' },
  ['ZshAndZinitFunctions'] = { link = 'String' },

  -- Ruby
  ['rubyModuleName'] = { link = 'String' },
  ['rubyClassName'] = { link = 'String' },
  ['rubyMethodName'] = { link = 'Constant' },
  ['rubyStringDelimiter'] = { link = 'String' },
  ['rubyRegexp'] = { link = 'String' },
  ['rubyConstant'] = { link = 'Constant' },
  ['rubyInstanceVariable'] = { link = 'Normal' },
  ['rubySharpBang'] = { link = 'Comment' },

  -- NvimTree
  ['NvimtreeNormal'] = { link = 'Directory' },
  ['NvimTreeFolderIcon'] = { link = 'Directory' },
  ['NvimTreeFolderIcon'] = { link = 'Directory' },
  ['NvimTreeIndentMarker'] = { link = 'Directory' },
  ['NvimTreeRootFolder'] = { link = 'Directory' },
  ['NvimTreeGitDirty'] = { link = 'CocExplorerGitContentChange' },
  ['NvimTreeGitStaged'] = { link = 'CocExplorerGitPathChange' },
  ['NvimTreeGitRenamed'] = { link = 'CocExplorerGitContentChange' },
  ['NvimTreeGitNew'] = { link = 'CocExplorerGitPathChange' },
  ['NvimTreeGitDeleted'] = { link = 'CocExplorerGitContentChange' },

  -- Floaterm
  ['FloatermBorder'] = { link = 'FloatBorder' },

  -- CMP
  ['CmpItemAbbr'] = { fg = grayscale.gray9 },
  ['CmpItemAbbrMatch'] = { fg = ui.foreground, bold = true },
  ['CmpItemKind'] = { link = 'Constant' },

  -- TreeSitter
  ['@attribute'] = { link = 'Constant' },
  ['@comment'] = { link = 'Comment' },
  ['@comment.documentation'] = { link = 'Comment' },
  ['@constructor'] = { link = 'String' },
  ['@constructor.lua'] = { link = 'Normal' },
  ['@constant.builtin'] = { link = 'Constant' },
  ['@field'] = { fg = ui.foreground },
  ['@function'] = { link = 'Constant' },
  ['@function.builtin'] = { link = 'Identifier' },
  ['@function.call'] = { link = 'Constant' },
  ['@label'] = { fg = ui.foreground },
  ['@method'] = { link = 'Constant' },
  ['@method.call'] = { link = 'String' },
  ['@method.call.cpp'] = { link = 'Constant' },
  ['@namespace'] = { link = 'String' },
  ['@parameter'] = { link = 'Normal' },
  ['@property'] = { fg = ui.foreground },
  ['@property.css'] = { link = 'String' },
  ['@punctuation.bracket'] = { fg = ui.foreground },
  ['@punctuation.delimiter'] = { link = 'Normal' },
  ['@punctuation.delimiter.astro'] = { link = 'Comment' },
  ['@punctuation.special'] = { link = 'Normal' },
  ['@spell'] = { link = 'Normal' },
  ['@string'] = { link = 'String' },
  ['@tag'] = { link = 'String' },
  ['@tag.attribute'] = { link = 'Constant' },
  ['@tag.delimiter'] = { fg = ui.foreground },
  ['@text.emphasis'] = { fg = ui.foreground, italic = true },
  ['@text.literal'] = { fg = ui.foreground },
  ['@text.reference'] = { fg = colors.blue, underline = true },
  ['@text.strong'] = { fg = ui.foreground, bold = true },
  ['@text.title.1.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.2.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.3.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.4.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.5.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.6.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.1.marker.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.2.marker.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.3.marker.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.4.marker.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.5.marker.markdown'] = { fg = colors.blue, bold = true },
  ['@text.title.6.marker.markdown'] = { fg = colors.blue, bold = true },
  ['@text.uri'] = { fg = ui.foreground, underline = true },
  ['@type'] = { link = 'Normal' },
  ['@type.builtin'] = { link = 'String' },
  ['@type.builtin'] = { link = 'String' },
  ['@type.cpp'] = { link = 'String' },
  ['@type.css'] = { link = 'String' },
  ['@type.definition.css'] = { fg = ui.foreground },
  ['@type.qualifier'] = { link = 'Identifier' },
  ['@variable'] = { link = 'Normal' },
  ['@variable.builtin'] = { link = 'Constant' },
  ['@conceal.json'] = { link = 'String' },
  ['@label.json'] = { link = 'String' },

  -- LSP
  ['@lsp.type.property'] = { link = '@type' },
  ['@lsp.type.method'] = { link = '@method' },
  ['@lsp.type.type'] = { link = '@type.builtin' },
  ['@lsp.type.parameter'] = { link = '@parameter' },
  ['@lsp.type.function'] = { link = '@variable.builtin' },
  ['@lsp.type.variable'] = { link = '@variable' },
  ['@lsp.type.namespace'] = { link = '@type.builtin' },
  ['@lsp.type.class'] = { link = '@type.builtin' },
  ['@lsp.type.interface'] = { link = '@type.builtin' },
  ["DiagnosticError"] = { fg = colors.red },
  ["DiagnosticWarn"] = { fg = colors.yellow },
  ["DiagnosticInfo"] = { fg = colors.cyan },
  ["DiagnosticHint"] = { fg = grayscale.gray9 },
  ["DiagnosticUnderlineError"] = { undercurl = true, sp = colors.red },
  ["DiagnosticUnderlineWarn"] = { undercurl = true, sp = colors.yellow },
  ["DiagnosticUnderlineInfo"] = { undercurl = true, sp = colors.cyan },
  ["DiagnosticUnderlineHint"] = { undercurl = true, sp = grayscale.gray9 },
  ["DiagnosticVirtualTextError"] = { bg = faded_colors.red, fg = colors.red },
  ["DiagnosticVirtualTextWarn"] = { bg = faded_colors.yellow, fg = colors.yellow },
  ["DiagnosticVirtualTextInfo"] = { bg = faded_colors.cyan, fg = colors.cyan },
  ["DiagnosticVirtualTextHint"] = { fg = grayscale.gray9 },

  -- Navic
  ['NavicIconsFile'] = { link = 'Directory' },
  ['NavicIconsModule'] = { link = 'Constant' },
  ['NavicIconsNamespace'] = { link = 'WarningMsg' },
  ['NavicIconsPackage'] = { link = 'Error' },
  ['NavicIconsClass'] = { link = 'Constant' },
  ['NavicIconsMethod'] = { link = 'String' },
  ['NavicIconsProperty'] = { link = 'Comment' },
  ['NavicIconsField'] = { link = 'Constant' },
  ['NavicIconsConstructor'] = { link = 'WarningMsg' },
  ['NavicIconsEnum'] = { link = 'String' },
  ['NavicIconsInterface'] = { link = 'String' },
  ['NavicIconsFunction'] = { link = 'String' },
  ['NavicIconsVariable'] = { link = 'Constant' },
  ['NavicIconsConstant'] = { link = 'String' },
  ['NavicIconsString'] = { link = 'String' },
  ['NavicIconsNumber'] = { link = 'Constant' },
  ['NavicIconsBoolean'] = { link = 'Constant' },
  ['NavicIconsArray'] = { link = 'String' },
  ['NavicIconsObject'] = { link = 'WarningMsg' },
  ['NavicIconsKey'] = { link = 'WarningMsg' },
  ['NavicIconsNull'] = { link = 'Constant' },
  ['NavicIconsEnumMember'] = { link = 'Constant' },
  ['NavicIconsStruct'] = { link = 'Constant' },
  ['NavicIconsEvent'] = { link = 'WarningMsg' },
  ['NavicIconsOperator'] = { link = 'Operator' },
  ['NavicIconsTypeParameter'] = { link = 'Type' },
  ['NavicText'] = { link = 'Directory' },
  ['NavicSeparator'] = { link = 'Directory' },
}

cmd('hi clear')
cmd('syntax reset')

for group, highlight in pairs(highlights) do
  api.nvim_set_hl(0, group, highlight)
end

g.terminal_color_0 = colors.black
g.terminal_color_8 = colors.darkgray

g.terminal_color_1 = colors.darkred
g.terminal_color_9 = colors.red

g.terminal_color_2 = colors.darkgreen
g.terminal_color_10 = colors.green

g.terminal_color_3 = colors.darkyellow
g.terminal_color_11 = colors.yellow

g.terminal_color_4 = colors.darkblue
g.terminal_color_12 = colors.blue

g.terminal_color_5 = colors.darkmagenta
g.terminal_color_13 = colors.magenta

g.terminal_color_6 = colors.darkcyan
g.terminal_color_14 = colors.cyan

g.terminal_color_7 = colors.gray
g.terminal_color_15 = colors.white
