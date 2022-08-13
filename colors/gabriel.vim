" gabriel.vim -- Vim color scheme.
" Author:      Gabriel Antonio (gantoreno@gmail.com)
" Webpage:     http://www.github.com/gantoreno/nvim-gabriel
" Description: Gabriel's (me) personal color scheme, now on Neovim
" Last Change: 2022-08-12

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "gabriel"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=0 ctermfg=15 cterm=NONE guibg=#000000 guifg=#ffffff gui=NONE
    hi NonText ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#000000 gui=NONE
    hi Comment ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#505050 gui=NONE
    hi Constant ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#999dd4 gui=NONE
    hi Error ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ac616a gui=NONE
    hi Identifier ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ac616a gui=NONE
    hi Ignore ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#dddddd gui=NONE
    hi PreProc ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ac616a gui=NONE
    hi Special ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Statement ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ac616a gui=NONE
    hi String ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#7ba2c3 gui=NONE
    hi Todo ctermbg=NONE ctermfg=15 cterm=bold guibg=NONE guifg=#ffffff gui=bold
    hi Type ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ac616a gui=NONE
    hi Underlined ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi StatusLine ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#dddddd gui=NONE
    hi StatusLineNC ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#505050 gui=NONE
    hi VertSplit ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#222222 gui=NONE
    hi TabLine ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi TabLineFill ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi TabLineSel ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Title ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi CursorLine ctermbg=8 ctermfg=NONE cterm=NONE guibg=#202020 guifg=NONE gui=NONE
    hi LineNr ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#777777 gui=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#dddddd gui=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Visual ctermbg=8 ctermfg=NONE cterm=NONE guibg=#202020 guifg=NONE gui=NONE
    hi VisualNOS ctermbg=8 ctermfg=NONE cterm=NONE guibg=#202020 guifg=NONE gui=NONE
    hi Pmenu ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#dddddd gui=NONE
    hi PmenuSbar ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=NONE guibg=#202020 guifg=#ffffff gui=NONE
    hi PmenuThumb ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi FoldColumn ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Folded ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi WildMenu ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi SpecialKey ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi DiffAdd ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi DiffChange ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi DiffDelete ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi DiffText ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi IncSearch ctermbg=8 ctermfg=NONE cterm=NONE guibg=#222222 guifg=NONE gui=NONE
    hi Search ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Directory ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#dddddd gui=NONE
    hi MatchParen ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE guisp=#ac616a
    hi SpellCap ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE guisp=#7ba2c3
    hi SpellLocal ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE guisp=#999dd4
    hi SpellRare ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE guisp=#8ac6c7
    hi ColorColumn ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi SignColumn ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi ErrorMsg ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi ModeMsg ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi MoreMsg ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Question ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Cursor ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi CursorColumn ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi QuickFixLine ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi Conceal ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi ToolbarLine ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi ToolbarButton ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi debugPC ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi debugBreakpoint ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi VimHiGroup ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#7ba2c3 gui=NONE
    hi VimVar ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi VimAutoEvent ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#7ba2c3 gui=NONE
    hi VimFunction ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#999dd4 gui=NONE
    hi vimVar ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#999dd4 gui=NONE
    hi vimMapMod ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#7ba2c3 gui=NONE
    hi vimMapModKey ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#7ba2c3 gui=NONE
    hi vimBracket ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#999dd4 gui=NONE
    hi vimNotation ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#999dd4 gui=NONE
    hi StatusText ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi StatusBackground ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#000000 gui=NONE
    hi StatusFileName ctermbg=NONE ctermfg=12 cterm=bold guibg=NONE guifg=#7ba2c3 gui=bold
    hi StatusFileType ctermbg=NONE ctermfg=10 cterm=bold guibg=NONE guifg=#98b386 gui=bold
    hi StatusFileModified ctermbg=NONE ctermfg=11 cterm=bold guibg=NONE guifg=#bfa86b gui=bold
    hi StatusFileReadonly ctermbg=NONE ctermfg=11 cterm=bold guibg=NONE guifg=#bfa86b gui=bold
    hi StatusFileLocation ctermbg=NONE ctermfg=13 cterm=bold guibg=NONE guifg=#999dd4 gui=bold
    hi StatusFileEncoding ctermbg=NONE ctermfg=14 cterm=bold guibg=NONE guifg=#8ac6c7 gui=bold
    hi StatusWarning ctermbg=NONE ctermfg=11 cterm=bold guibg=NONE guifg=#bfa86b gui=bold
    hi StatusError ctermbg=NONE ctermfg=9 cterm=bold guibg=NONE guifg=#ac616a gui=bold
    hi TabLineTitle ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#dddddd gui=NONE
    hi TabLineTitleActive ctermbg=NONE ctermfg=12 cterm=bold guibg=NONE guifg=#7ba2c3 gui=bold
    hi CocExplorerGitPathChange ctermbg=NONE ctermfg=10 cterm=NONE guibg=NONE guifg=#98b386 gui=NONE
    hi CocExplorerGitContentChange ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#bfa86b gui=NONE
    hi SignifySignAdd ctermbg=NONE ctermfg=10 cterm=NONE guibg=NONE guifg=#98b386 gui=NONE
    hi SignifySignDelete ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ac616a gui=NONE
    hi SignifySignChange ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#bfa86b gui=NONE
    hi CocErrorSign ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ac616a gui=NONE
    hi CocInfoSign ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#bfa86b gui=NONE
    hi CocWarningSign ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#bfa86b gui=NONE
    hi IndentBlanklineChar ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#2d2d2d gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=black ctermfg=white cterm=NONE
    hi NonText ctermbg=NONE ctermfg=black cterm=NONE
    hi Comment ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Constant ctermbg=NONE ctermfg=magenta cterm=NONE
    hi Error ctermbg=NONE ctermfg=red cterm=NONE
    hi Identifier ctermbg=NONE ctermfg=red cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=red cterm=NONE
    hi Special ctermbg=NONE ctermfg=white cterm=NONE
    hi Statement ctermbg=NONE ctermfg=red cterm=NONE
    hi String ctermbg=NONE ctermfg=blue cterm=NONE
    hi Todo ctermbg=NONE ctermfg=white cterm=bold
    hi Type ctermbg=NONE ctermfg=red cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=white cterm=NONE
    hi StatusLine ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi StatusLineNC ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi VertSplit ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi TabLine ctermbg=NONE ctermfg=white cterm=NONE
    hi TabLineFill ctermbg=NONE ctermfg=white cterm=NONE
    hi TabLineSel ctermbg=NONE ctermfg=white cterm=NONE
    hi Title ctermbg=NONE ctermfg=white cterm=NONE
    hi CursorLine ctermbg=darkgray ctermfg=NONE cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=white cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=white cterm=NONE
    hi Visual ctermbg=darkgray ctermfg=NONE cterm=NONE
    hi VisualNOS ctermbg=darkgray ctermfg=NONE cterm=NONE
    hi Pmenu ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi PmenuSbar ctermbg=NONE ctermfg=white cterm=NONE
    hi PmenuSel ctermbg=darkgray ctermfg=white cterm=NONE
    hi PmenuThumb ctermbg=NONE ctermfg=white cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=white cterm=NONE
    hi Folded ctermbg=NONE ctermfg=white cterm=NONE
    hi WildMenu ctermbg=NONE ctermfg=white cterm=NONE
    hi SpecialKey ctermbg=NONE ctermfg=white cterm=NONE
    hi DiffAdd ctermbg=NONE ctermfg=white cterm=NONE
    hi DiffChange ctermbg=NONE ctermfg=white cterm=NONE
    hi DiffDelete ctermbg=NONE ctermfg=white cterm=NONE
    hi DiffText ctermbg=NONE ctermfg=white cterm=NONE
    hi IncSearch ctermbg=darkgray ctermfg=NONE cterm=NONE
    hi Search ctermbg=NONE ctermfg=white cterm=NONE
    hi Directory ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi MatchParen ctermbg=NONE ctermfg=white cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=white cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=white cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=white cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=white cterm=NONE
    hi ColorColumn ctermbg=NONE ctermfg=white cterm=NONE
    hi SignColumn ctermbg=NONE ctermfg=white cterm=NONE
    hi ErrorMsg ctermbg=NONE ctermfg=white cterm=NONE
    hi ModeMsg ctermbg=NONE ctermfg=white cterm=NONE
    hi MoreMsg ctermbg=NONE ctermfg=white cterm=NONE
    hi Question ctermbg=NONE ctermfg=white cterm=NONE
    hi Cursor ctermbg=NONE ctermfg=white cterm=NONE
    hi CursorColumn ctermbg=NONE ctermfg=white cterm=NONE
    hi QuickFixLine ctermbg=NONE ctermfg=white cterm=NONE
    hi Conceal ctermbg=NONE ctermfg=white cterm=NONE
    hi ToolbarLine ctermbg=NONE ctermfg=white cterm=NONE
    hi ToolbarButton ctermbg=NONE ctermfg=white cterm=NONE
    hi debugPC ctermbg=NONE ctermfg=white cterm=NONE
    hi debugBreakpoint ctermbg=NONE ctermfg=white cterm=NONE
    hi VimHiGroup ctermbg=NONE ctermfg=blue cterm=NONE
    hi VimVar ctermbg=NONE ctermfg=white cterm=NONE
    hi VimAutoEvent ctermbg=NONE ctermfg=blue cterm=NONE
    hi VimFunction ctermbg=NONE ctermfg=magenta cterm=NONE
    hi vimVar ctermbg=NONE ctermfg=magenta cterm=NONE
    hi vimMapMod ctermbg=NONE ctermfg=blue cterm=NONE
    hi vimMapModKey ctermbg=NONE ctermfg=blue cterm=NONE
    hi vimBracket ctermbg=NONE ctermfg=magenta cterm=NONE
    hi vimNotation ctermbg=NONE ctermfg=magenta cterm=NONE
    hi StatusText ctermbg=NONE ctermfg=white cterm=NONE
    hi StatusBackground ctermbg=NONE ctermfg=black cterm=NONE
    hi StatusFileName ctermbg=NONE ctermfg=blue cterm=bold
    hi StatusFileType ctermbg=NONE ctermfg=green cterm=bold
    hi StatusFileModified ctermbg=NONE ctermfg=yellow cterm=bold
    hi StatusFileReadonly ctermbg=NONE ctermfg=yellow cterm=bold
    hi StatusFileLocation ctermbg=NONE ctermfg=magenta cterm=bold
    hi StatusFileEncoding ctermbg=NONE ctermfg=cyan cterm=bold
    hi StatusWarning ctermbg=NONE ctermfg=yellow cterm=bold
    hi StatusError ctermbg=NONE ctermfg=red cterm=bold
    hi TabLineTitle ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi TabLineTitleActive ctermbg=NONE ctermfg=blue cterm=bold
    hi CocExplorerGitPathChange ctermbg=NONE ctermfg=green cterm=NONE
    hi CocExplorerGitContentChange ctermbg=NONE ctermfg=yellow cterm=NONE
    hi SignifySignAdd ctermbg=NONE ctermfg=green cterm=NONE
    hi SignifySignDelete ctermbg=NONE ctermfg=red cterm=NONE
    hi SignifySignChange ctermbg=NONE ctermfg=yellow cterm=NONE
    hi CocErrorSign ctermbg=NONE ctermfg=red cterm=NONE
    hi CocInfoSign ctermbg=NONE ctermfg=yellow cterm=NONE
    hi CocWarningSign ctermbg=NONE ctermfg=yellow cterm=NONE
    hi IndentBlanklineChar ctermbg=NONE ctermfg=darkgray cterm=NONE
endif

hi link EndOfBuffer NonText
hi link Number Constant
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WarningMsg Error
hi link CursorIM Cursor
hi link Terminal Normal
hi link htmlTag Normal
hi link htmlEndTag Normal
hi link htmlArg Constant
hi link htmlTagName String
hi link jsonNull Constant
hi link jsonQuote String
hi link jsonKeyword jsonQuote
hi link jsoncNull Constant
hi link jsoncKeywordMatch jsonKeyword
hi link jsoncBraces Normal
hi link jsNull Constant
hi link jsThis Constant
hi link jsParen Normal
hi link jsFuncName Constant
hi link jsFuncCall Constant
hi link jsDocTags Identifier
hi link jsDocType String
hi link jsDocTypeBrackets String
hi link jsTemplateBraces String
hi link jsDocParam Normal
hi link jsGlobalNodeObjects String
hi link jsObjectProp Constant
hi link jsVariableDef Constant
hi link jsArrowFunction Identifier
hi link jsFuncBlock Normal
hi link jsClassDefinition Constant
hi link jsDecoratorFunction Normal
hi link jsDestructuringBlock Constant
hi link javaScriptNull Constant
hi link javaScriptBraces Normal
hi link javaScriptNull Constant
hi link jsxAttrib Constant
hi link jsxTagName String
hi link jsxOpenPunct Normal
hi link jsxClosePunct Normal
hi link jsxCloseString Normal
hi link jsxElement String
hi link jsxComponentName String
hi link typescriptImport Identifier
hi link typescriptExport Identifier
hi link typescriptAbstract Identifier
hi link typescriptAliasDeclaration String
hi link typescriptClassName String
hi link typescriptTypeParameter String
hi link typescriptPredefinedType String
hi link typescriptClassHeritage Constant
hi link typescriptTypeReference String
hi link typescriptTypeAnnotation Identifier
hi link typescriptAssign Operator
hi link typescriptMember Constant
hi link typescriptDocTags Identifier
hi link typescriptDocNotation Identifier
hi link typescriptFuncComma Normal
hi link typescriptCall Normal
hi link typescriptBraces javaScriptBraces
hi link typescriptIdentifier Constant
hi link typescriptGlobal String
hi link typescriptProp Constant
hi link typescriptBOMWindowMethod Constant
hi link typescriptCacheMethod Constant
hi link typescriptBinaryOp Operator
hi link typescriptHeadersMethod Constant
hi link typescriptJSONStaticMethod String
hi link typescriptTemplateSB String
hi link typescriptObjectLabel Normal
hi link typescriptArrowFuncArg Normal
hi link typescriptPaymentMethod Constant
hi link typescriptIdentifierName String
hi link typescriptVariableDeclaration Constant
hi link yamlPlainScalar String
hi link yamlBlockMappingKey String
hi link yamlBlockCollectionItemStart Normal
hi link vimOption String
hi link vimCommand Identifier
hi link vimFunction Identifier
hi link gitcommitSummary Normal
hi link gitcommitOverflow Error
hi link luaTable Normal
hi link pythonFunction String
hi link pythonFunctionCall Normal
hi link pythonClass String
hi link pythonClassVar Constant
hi link pythonDecorator Constant
hi link pythonDottedName Constant
hi link pythonBuiltinType String
hi link pythonBuiltinFunc String
hi link pythonStrFormat Constant
hi link CocExplorerFileRootName String
hi link CocExplorerFileFullpath Ignore
hi link CocExplorerFileFilename Ignore
hi link TelescopeBorder VertSplit
hi link TelescopePromptBorder VertSplit
hi link TelescopeResultsBorder VertSplit
hi link TelescopePreviewBorder VertSplit
hi link zshVariableDef Constant
hi link zshFunction Constant
hi link zshDeref Constant
hi link ZshAndZinitFunctions String
hi link rubyModuleName String
hi link rubyClassName String
hi link rubyMethodName Constant
hi link rubyStringDelimiter String
hi link rubyRegexp String
hi link rubyConstant Constant
hi link rubyInstanceVariable Normal
hi link rubySharpBang Comment

let g:terminal_ansi_colors = [ '#222222', '#ac616a', '#98b386', '#bfa86b', '#7ba2c3', '#999dd4', '#8ac6c7', '#dddddd', '#666666', '#ac616a', '#98b386', '#bfa86b', '#7ba2c3', '#999dd4', '#8ac6c7', '#ffffff', ]

" Generated with RNB (https://github.com/romainl/vim-rnb)
