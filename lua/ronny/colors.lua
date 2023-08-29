local M = {}

M.palette = {
    -- ANSI 0-7 (normal)
    black =  "#1B1D1E",
    red =    "#FF0044",
    green =  "#82B414",
    yellow = "#FD971F",
    blue =   "#266C98",
    purple = "#AC0CB1",
    cyan =   "#00AAAA",
    white =  "#CCCCCC",

    -- ANSI 8-15 (bright)
    bright_black =  "#808080",
    bright_red =    "#F92672",
    bright_green =  "#A6E22E",
    bright_yellow = "#E6DB74",
    bright_blue =   "#7070F0",
    bright_purple = "#D63AE1",
    bright_cyan =   "#66D9EF",
    bright_white =  "#F8F8F2",

    -- Other colors
    violet =        "#AE81FF",
    bright_violet = "#CEB3FF",
    yuma =          "#C4BE89",
    -- gray =          "#75715E",
    -- gray2 =         "#49483E",
    gray =          "#7E8E91",
    bright_white2 = "#F8F8F0"

    -- #8F8F8F
}

local pal = M.palette

-- See :help group-name
M.syntax = {}
local syntax = M.syntax

syntax.Comment =      { fg="#7E8E91" }
syntax.Constant =     { fg=pal.violet, bold=true } -- bold font?
syntax.String =       { fg=pal.bright_yellow }
syntax.Character =    { fg=pal.bright_yellow }
syntax.Number =       { fg=pal.violet }
syntax.Boolean =      { fg=pal.violet }
syntax.Float =        { fg=pal.violet }
syntax.Identifier =   { fg=pal.yellow }
syntax.Function =     { fg=pal.bright_green }
syntax.Statement =    { fg=pal.bright_red, bold=true }
syntax.Conditional =  { fg=pal.bright_red, bold=true }
syntax.Repeat =       { fg=pal.bright_red }
syntax.Label =        { fg=pal.yellow }
syntax.Operator =     { fg=pal.bright_red }
syntax.Keyword  =     { fg=pal.bright_red, bold=true }
syntax.Exception =    { fg=pal.bright_green, bold=true }
syntax.PreProc =      { fg=pal.bright_green }
-- syntax.Include
syntax.Define =       { fg=pal.bright_cyan }
syntax.Macro =        { fg=pal.yuma, italic=true }
syntax.PreCondit =    { fg=pal.bright_green, bold=true }
syntax.Type =         { fg=pal.bright_cyan }
syntax.StorageClass = { fg=pal.yellow, italic=true }
syntax.Structure =    { fg=pal.bright_cyan }
syntax.Typedef =      { fg=pal.bright_cyan }
syntax.Special =      { fg=pal.bright_cyan, italic=true }
syntax.SpecialChar =  { fg=pal.bright_red, italic=true }
syntax.Tag =          { fg=pal.bright_red, italic=true }
syntax.Delimiter =    { fg="#8F8F8F" }
syntax.SpecialComment = { fg="#7E8E91", bold=true }
syntax.Debug =        { fg="#BCA3A3", bold=true }
syntax.Underlined =   { fg="#808080", underline=true }
syntax.Ignore =       { fg="#808080" }
syntax.Error =        { fg=pal.bright_yellow, bg="#1E0010" }
syntax.Todo =         { fg=pal.bright_white, bold=true }

-- See :help highlight-default
M.builtin = {}
local builtin = M.builtin

builtin.ColorColumn =  { bg="#232526" }
-- builtin.Conceal
-- builtin.CurSearch
-- builtin.Cursor
-- builtin.lCursor
-- builtin.CursorIM
builtin.CursorColumn = { bg="#293739" }
builtin.CursorLine =   { bg="#293739" }
builtin.Directory =    { fg=pal.bright_green, bold=true }
builtin.DiffAdd =      { bg="#13354A" }
builtin.DiffChange =   { fg="#89807D", bg="#4C4745" }
builtin.DiffDelete =   { fg="#960050", bg="#1E0010" }
builtin.DiffText =     { bg="#4C4745", bold=true, italic=true }
-- builtin.EndOfBuffer
-- builtin.TermCursor
-- builtin.TermCursorNC
builtin.ErrorMsg =     { fg=pal.bright_red, bg="#232526", bold=true }
-- builtin.WinSeparator
builtin.Folded =       { fg="#465457", bg="#000000" }
builtin.FoldColumn =   { fg="#465457", bg="#000000" }
builtin.SignColumn =   { fg=pal.bright_green, bg="#232526" }
builtin.IncSearch =    { fg=pal.yuma, bg="#000000" }
-- builtin.Substitute
builtin.LineNr =       { fg="#465457", bg=pal.black }
-- builtin.LineNrAbove
-- builtin.LineNrBelow
builtin.CursorLineNr = { fg=pal.yellow }
-- builtin.CursorLineFold
-- builtin.CursorLineSign
builtin.MatchParen =   { fg="#000000", bg=pal.yellow, bold=true }
builtin.ModeMsg =      { fg=pal.bright_yellow }
-- builtin.MsgArea
builtin.NonText =      { fg="#465457" }
builtin.Normal =       { fg=pal.bright_white, bg=pal.black }
-- builtin.NormalFloat
-- builtin.FloatBorder
-- builtin.FloatTitle
-- builtin.NormalNC
builtin.Pmenu =        { fg=pal.bright_cyan, bg="#000000" }
builtin.PmenuSel =     { bg=pal.bright_black }
-- builtin.PmenuKind
-- builtin.PmenuKindSel
-- builtin.PmenuExtra
-- builtin.PmenuExtraSel
builtin.PmenuSbar =    { bg="#080808" }
builtin.PmenuThumb =   { fg=pal.bright_cyan }
builtin.Question =     { fg=pal.bright_cyan }
-- builtin.QuickFixLine
builtin.Search =       { fg="#000000", bg="#FFE792" }
builtin.SpecialKey =   { fg="#465457" }
builtin.SpellBad =     { sp = "#FF0000", undercurl=true }
builtin.SpellCap =     { sp = "#7070F0", font="undercurl" }
builtin.SpellLocal =   { sp = "#70F0F0", font="undercurl" }
builtin.SpellRare =    { sp = "#FFFFFF", font="undercurl" }
builtin.StatusLine =   { fg="#455354" }
builtin.StatusLineNC = { fg= "#808080", bg="#080808" }
builtin.TabLine =      { fg=pal.black, bg="#808080" }
builtin.TabLineFill =  { fg=pal.black, bg=pal.black }
-- builtin.TabLineSel
builtin.Title =        { fg="#EF5939" }
builtin.Visual =       { bg="#403D3D" }
builtin.VisualNOS =    { bg="#403D3D" }
builtin.WarningMsg =   { fg="#FFFFFF", bg="#333333" }
-- builtin.Whitespace
builtin.WildMenu =     { fg=pal.bright_cyan, bg="#000000", bold=true }
-- builtin.WinBar
-- builtin.WinBarNC

-- TODO: original Monokai colors
-- See https://github.com/textmate/monokai.tmbundle
-- if config.monokai_original == true then
--     syntax.Comment =     { fg="#75715E" }
--     builtin.Normal = { fg="#F8F8F2", bg="#272822" }
--     builtin.CursorLine = { bg="#3E3D32" }
--     builtin.CursorLineNr = { fg=pal.yellow }
--     builtin.CursorColumn = { bg="#3B3A32" }
--     builtin.ColorColumn = { bg="#3B3A32" }
--     builtin.LineNr = { fg="#8F908A", bg="#272822" }
--     builtin.NonText = { fg="#75715E" }
--     builtin.SpecialKey = { fg="#75715E" }
-- end

-- TODO: Diagnostic & LSP
M.diagnostic = {
    -- DiagnosticError
    -- DiagnosticWarn
    -- DiagnosticInfo
    -- DiagnosticHint
    -- DiagnosticOk
    -- DiagnosticUnderlineError
    -- DiagnosticUnderlineWarn
    -- DiagnosticUnderlineInfo
    -- DiagnosticUnderlineHint
    -- DiagnosticUnderlineOk
    -- DiagnosticVirtualTextError
    -- DiagnosticVirtualTextWarn
    -- DiagnosticVirtualTextInfo
    -- DiagnosticVirtualTextHint
    -- DiagnosticVirtualTextOk
    -- DiagnosticFloatingError
    -- DiagnosticFloatingWarn
    -- DiagnosticFloatingInfo
    -- DiagnosticFloatingHint
    -- DiagnosticFloatingOk
    -- DiagnosticSignError
    -- DiagnosticSignWarn
    -- DiagnosticSignInfo
    -- DiagnosticSignHint
    -- DiagnosticSignOk
    -- DiagnosticDeprecated
    -- DiagnosticUnnecessary
    -- LspReferenceText
    -- LspReferenceRead
    -- LspReferenceWrite
}

-- TODO: LSPInfo?
-- LspInfoBorder
-- LspInfoFiletype
-- LspInfoTitle
-- LspInfoTip
-- LspInfoList

-- TODO: treesitter
-- @text
-- @text.literal
-- @text.reference
-- @text.title
-- @text.uri
-- @text.underline
-- @text.todo
-- @comment
-- @punctuation
-- @constant
-- @constant.builtin
-- @constant.macro
-- @define
-- @macro
-- @string
-- @string.escape
-- @string.special
-- @character
-- @character.special
-- @number
-- @boolean
-- @float
-- @function
-- @function.builtin
-- @function.macro
-- @parameter
-- @method
-- @field
-- @property
-- @constructor
-- @repeat
-- @label
-- @operator
-- @keyword
-- @exception
-- @variable
-- @type
-- @type.definition
-- @storageclass
-- @namespace
-- @include
-- @preproc
-- @debug
-- @tag
-- @lsp
-- @lsp.type
-- @lsp.type.class
-- @lsp.type.comment
-- @lsp.type.decorator
-- @lsp.type.enum
-- @lsp.type.enumMember
-- @lsp.type.function
-- @lsp.type.interface
-- @lsp.type.macro
-- @lsp.type.method
-- @lsp.type.namespace
-- @lsp.type.parameter
-- @lsp.type.property
-- @lsp.type.struct
-- @lsp.type.type
-- @lsp.type.typeParameter
-- @lsp.type.variable

-- TODO: Markdown (unchecked)
-- markdownBold
-- markdownCode
-- markdownRule
-- markdownCodeDelimiter
-- markdownHeadingDelimiter
-- markdownFootnote
-- markdownFootnoteDefinition
-- markdownUrl
-- markdownLinkText
-- markdownEscape

-- TODO: Asciidoc (unchecked)
-- asciidocAttributeEntry
-- asciidocAttributeList
-- asciidocAttributeRef
-- asciidocHLabel
-- asciidocListingBlock
-- asciidocMacroAttributes
-- asciidocOneLineTitle
-- asciidocPassthroughBlock
-- asciidocQuotedMonospaced
-- asciidocTriplePlusPassthrough
-- asciidocMacro
-- asciidocAdmonition
-- asciidocQuotedEmphasized
-- asciidocQuotedEmphasized2
-- asciidocQuotedEmphasizedItalic
-- asciidocBackslash
-- asciidocQuotedBold
-- asciidocQuotedMonospaced2
-- asciidocQuotedUnconstrainedBold
-- asciidocQuotedUnconstrainedEmphasized
-- asciidocURL

-- TODO: C
-- cStatement     links to Statement
-- cLabel         links to Label
-- cConditional   links to Conditional
-- cRepeat        links to Repeat
-- cTodo          links to Todo
-- cBadContinuation links to Error
-- cSpecial       links to SpecialChar
-- cFormat        links to cSpecial
-- cString        links to String
-- cCppString     links to cString
-- cSpaceError    links to cError
-- cCppSkip       cleared
-- cCharacter     links to Character
-- cSpecialError  links to cError
-- cSpecialCharacter links to cSpecial
-- cBadBlock      cleared
-- cCurlyError    links to cError
-- cErrInParen    links to cError
-- cCppParen      cleared
-- cErrInBracket  links to cError
-- cCppBracket    cleared
-- cBlock         cleared
-- cParenError    links to cError
-- cIncluded      links to cString
-- cCommentSkip   links to cComment
-- cCommentString links to cString
-- cComment2String links to cString
-- cCommentStartError links to cError
-- cUserLabel     links to Label
-- cBitField      cleared
-- cOctalZero     links to PreProc
-- cNumber        links to Number
-- cFloat         links to Float
-- cOctal         links to Number
-- cOctalError    links to cError
-- cNumbersCom    cleared
-- cParen         cleared
-- cBracket       cleared
-- cNumbers       cleared
-- cWrongComTail  links to cError
-- cCommentL      links to cComment
-- cCommentStart  links to cComment
-- cComment       links to Comment
-- cCommentError  links to cError
-- cOperator      links to Operator
-- cType          links to Type
-- cTypedef       links to Structure
-- cStructure     links to Structure
-- cStorageClass  links to StorageClass
-- cConstant      links to Constant
-- cPreCondit     links to PreCondit
-- cPreConditMatch links to cPreCondit
-- cCppInIf       cleared
-- cCppInElse     cleared
-- cCppInElse2    links to cCppOutIf2
-- cCppOutIf      cleared
-- cCppOutIf2     links to cCppOut
-- cCppOutElse    cleared
-- cCppInSkip     cleared
-- cCppOutSkip    links to cCppOutIf2
-- cCppOutWrapper links to cPreCondit
-- cCppInWrapper  links to cCppOutWrapper
-- cPreProc       links to PreProc
-- cInclude       links to Include
-- cDefine        links to Macro
-- cMulti         cleared
-- cPragma        cleared
-- cUserCont      cleared
-- cError         links to Error
-- cCppOut        links to Comment

-- TODO: C++
-- cppStatement   links to Statement
-- cppAccess      links to cppStatement
-- cppModifier    links to Type
-- cppType        links to Type
-- cppExceptions  links to Exception
-- cppOperator    links to Operator
-- cppCast        links to cppStatement
-- cppStorageClass links to StorageClass
-- cppStructure   links to Structure
-- cppBoolean     links to Boolean
-- cppConstant    links to Constant
-- cppRawStringDelimiter links to Delimiter
-- cppRawString   links to String
-- cppNumber      links to Number
-- cppFloat       links to Number
-- cppNumbers     cleared
-- cppString      links to String
-- cppCharacter   links to cCharacter
-- cppSpecialError links to cSpecialError
-- cppSpecialCharacter links to cSpecialCharacter
-- cppModule      links to Include
-- cppMinMax      cleared

-- TODO: JSON (unchecked)
-- jsonKeyword
-- jsonEscape
-- jsonNull
-- jsonBoolean

-- TODO: HTML (unchecked)
-- htmlTag
-- htmlEndTag
-- htmlTagName
-- htmlSpecialTagName
-- htmlArg

-- TODO: PHP (unchecked)
-- phpStaticClasses
-- phpMethod
-- phpClass
-- phpFunction
-- phpInclude
-- phpUseClass
-- phpRegion
-- phpMethodsVar

-- TODO: CSS (unchecked)
-- cssBraces
-- cssInclude
-- cssTagName
-- cssClassName
-- cssPseudoClass
-- cssPseudoClassId
-- cssPseudoClassLang
-- cssIdentifier
-- cssProp
-- cssDefinition
-- cssAttr
-- cssAttrRegion
-- cssColor
-- cssFunction
-- cssFunctionName
-- cssVendor
-- cssValueNumber
-- cssValueLength
-- cssUnitDecorators
-- cssStyle
-- cssImportant

-- TODO: JavaScript (unchecked)
-- jsVariableDef
-- jsFuncArgs
-- jsFuncBlock
-- jsRegexpString
-- jsThis
-- jsOperatorKeyword
-- jsDestructuringBlock
-- jsObjectKey
-- jsGlobalObjects
-- jsModuleKeyword
-- jsClassDefinition
-- jsClassKeyword
-- jsExtendsKeyword
-- jsExportDefault
-- jsFuncCall
-- jsObjectValue
-- jsParen
-- jsObjectProp
-- jsIfElseBlock
-- jsParenIfElse
-- jsSpreadOperator
-- jsSpreadExpression

-- TODO: Typescript (unchecked)
-- typescriptLabel
-- typescriptExceptions
-- typescriptBraces
-- typescriptEndColons
-- typescriptParens
-- typescriptDocTags
-- typescriptDocComment
-- typescriptLogicSymbols
-- typescriptImport
-- typescriptBOM
-- typescriptVariableDeclaration
-- typescriptVariable
-- typescriptExport
-- typescriptAliasDeclaration
-- typescriptAliasKeyword
-- typescriptClassName
-- typescriptAccessibilityModifier
-- typescriptOperator
-- typescriptArrowFunc
-- typescriptMethodAccessor
-- typescriptMember
-- typescriptTypeReference
-- typescriptTemplateSB
-- typescriptArrowFuncArg
-- typescriptParamImpl
-- typescriptFuncComma
-- typescriptCastKeyword
-- typescriptCall
-- typescriptCase
-- typescriptReserved
-- typescriptDefault
-- typescriptDecorator
-- typescriptPredefinedType
-- typescriptClassHeritage
-- typescriptClassExtends
-- typescriptClassKeyword
-- typescriptBlock
-- typescriptDOMDocProp
-- typescriptTemplateSubstitution
-- typescriptClassBlock
-- typescriptFuncCallArg
-- typescriptIndexExpr
-- typescriptConditionalParen
-- typescriptArray
-- typescriptES6SetProp
-- typescriptObjectLiteral
-- typescriptTypeParameter
-- typescriptEnumKeyword
-- typescriptEnum
-- typescriptLoopParen
-- typescriptParenExp
-- typescriptModule
-- typescriptAmbientDeclaration
-- typescriptFuncTypeArrow
-- typescriptInterfaceHeritage
-- typescriptInterfaceName
-- typescriptInterfaceKeyword
-- typescriptInterfaceExtends
-- typescriptGlobal
-- typescriptAsyncFuncKeyword
-- typescriptFuncKeyword
-- typescriptGlobalMethod
-- typescriptPromiseMethod

-- TODO: XML (unchecked)
-- xmlTag
-- xmlTagName
-- xmlEndTag

-- TODO: Ruby (unchecked)
-- rubyClassNameTag
-- rubyClassName
-- rubyModuleName
-- rubyConstant

-- TODO: Golang (unchecked)
-- goPackage
-- goImport
-- goVar
-- goConst
-- goStatement
-- goType
-- goSignedInts
-- goUnsignedInts
-- goFloats
-- goComplexes
-- goBuiltins
-- goBoolean
-- goPredefinedIdentifiers
-- goTodo
-- goDeclaration
-- goDeclType
-- goTypeDecl
-- goTypeName
-- goVarAssign
-- goVarDefs
-- goReceiver
-- goReceiverType
-- goFunctionCall
-- goMethodCall
-- goSingleDecl

-- TODO: Python (unchecked)
-- pythonStatement
-- pythonOperator
-- pythonException
-- pythonExClass
-- pythonBuiltinObj
-- pythonBuiltinType
-- pythonBoolean
-- pythonNone
-- pythonTodo
-- pythonClassVar
-- pythonClassDef

-- TODO: TeX (unchecked)
-- texStatement
-- texBeginEnd
-- texBeginEndName
-- texOption
-- texBeginEndModifier
-- texDocType
-- texDocTypeArgs

-- TODO: Git (unchecked)
-- gitcommitHeader
-- gitcommitOnBranch
-- gitcommitBranch
-- gitcommitComment
-- gitcommitSelectedType
-- gitcommitSelectedFile
-- gitcommitDiscardedType
-- gitcommitDiscardedFile
-- gitcommitOverflow
-- gitcommitSummary
-- gitcommitBlank

-- TODO: Lua (unchecked)
-- luaFuncCall
-- luaFuncArgName
-- luaFuncKeyword
-- luaLocal
-- luaBuiltIn

-- TODO: SH (unchecked)
-- shDeref
-- shVariable

-- TODO: SQL (unchecked)
-- sqlKeyword
-- sqlFunction
-- sqlOperator

-- TODO: YAML (unchecked)
-- yamlKey
-- yamlConstant

-- TODO: Gitgutter (unchecked)
-- GitGutterAdd
-- GitGutterChange
-- GitGutterDelete

-- TODO: Git Signs (unchecked)
-- GitSignsAdd
-- GitSignsChange
-- GitSignsDelete
-- GitSignsAddLn
-- GitSignsChangeLn
-- GitSignsDeleteLn

-- TODO: NvimTree (unchecked)
-- NvimTreeRootFolder
-- NvimTreeGitDirty
-- NvimTreeGitNew
-- NvimTreeImageFile
-- NvimTreeEmptyFolderName
-- NvimTreeFolderName
-- NvimTreeSpecialFile
-- NvimTreeNormal
-- NvimTreeCursorLine
-- NvimTreeVertSplit
-- NvimTreeEndOfBuffer
-- NvimTreeOpenedFolderName
-- NvimTreeGitRenamed
-- NvimTreeGitIgnored
-- NvimTreeGitDeleted
-- NvimTreeGitStaged
-- NvimTreeGitMerge
-- NvimTreeGitDirty
-- NvimTreeGitNew

-- TODO: Bufferline (unchecked)
-- BufferLineIndicatorSelected
-- BufferLineFill

-- TODO: BarBar (unchecked)
-- BufferCurrent
-- BufferCurrentIndex
-- BufferCurrentMod
-- BufferCurrentSign
-- BufferCurrentTarget
-- BufferVisible
-- BufferVisibleIndex
-- BufferVisibleMod
-- BufferVisibleSign
-- BufferVisibleTarget
-- BufferInactive
-- BufferInactiveIndex
-- BufferInactiveMod
-- BufferInactiveSign
-- BufferInactiveTarget
-- BufferTabpages
-- BufferTabpagesFill

-- TODO: IndentBlankLine (unchecked)
-- IndentBlanklineContextChar
-- IndentBlanklineContextStart
-- IndentBlanklineChar
-- IndentBlanklineSpaceChar
-- IndentBlanklineSpaceCharBlankline

-- TODO: COC.nvim (unchecked)
-- CocHighlightText
-- CocHighlightRead
-- CocHighlightWrite

-- TODO: nvim-cmp
-- CmpItemAbbr guifg=#66d9ef
-- CmpItemAbbrDeprecated guifg=#7e8e91
-- CmpItemAbbrMatch guifg=#66d9ef
-- CmpItemAbbrMatchFuzzy guifg=#66d9ef
-- CmpItemKind guifg=#66d9ef
-- CmpItemMenu guifg=#66d9ef
-- CmpItemKindClass links to CmpItemKind
-- CmpItemKindMethod links to CmpItemKind
-- CmpItemKindSnippet links to CmpItemKind
-- CmpItemKindColor links to CmpItemKind
-- CmpItemKindKeyword links to CmpItemKind
-- CmpItemKindProperty links to CmpItemKind
-- CmpItemKindEnumMember links to CmpItemKind
-- CmpItemKindConstant links to CmpItemKind
-- CmpItemKindModule links to CmpItemKind
-- CmpItemKindFile links to CmpItemKind
-- CmpItemKindFunction links to CmpItemKind
-- CmpItemKindVariable links to CmpItemKind
-- CmpItemKindInterface links to CmpItemKind
-- CmpItemKindConstructor links to CmpItemKind
-- CmpItemKindEnum links to CmpItemKind
-- CmpItemKindText links to CmpItemKind
-- CmpItemKindOperator links to CmpItemKind
-- CmpItemKindStruct links to CmpItemKind
-- CmpItemKindField links to CmpItemKind
-- CmpItemKindReference links to CmpItemKind
-- CmpItemKindEvent links to CmpItemKind
-- CmpItemKindValue links to CmpItemKind
-- CmpItemKindUnit links to CmpItemKind
-- CmpItemKindFolder links to CmpItemKind

-- TODO: Telescope (unchecked)
-- TelescopePromptBorder
-- TelescopeResultsBorder
-- TelescopePreviewBorder
-- TelescopeNormal
-- TelescopeSelection
-- TelescopeMultiSelection
-- TelescopeMatching
-- TelescopePromptPrefix

-- TODO: DapUI (?)
-- TODO: DevIcon (?)
-- TODO: WhickKey (?)
-- WhichKey links to Function
-- WhichKeyBorder links to FloatBorder
-- WhichKeySeparator links to Comment
-- WhichKeyDesc links to Identifier
-- WhichKeyValue links to Comment
-- WhichKeyFloat links to NormalFloat
-- WhichKeyGroup links to Keyword
-- TODO: Dashboard (?)
-- TODO: hlargs.nvim (?)

-- TODO: background
if vim.opt.background == "dark" then
elseif vim.opt.background == "light" then
end

return M
