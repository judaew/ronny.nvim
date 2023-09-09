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
    gray =          "#7E8E91",
    gray2 =         "#465457",
    black2 =        "#232526",
    black3 =        "#343434"
}

local pal = M.palette

-- See :help group-name
M.syntax = {}
local syntax = M.syntax

syntax.Comment =      { fg=pal.gray, bg="NONE" }
syntax.Constant =     { fg=pal.violet, bg="NONE" }
syntax.String =       { fg=pal.bright_yellow, bg="NONE" }
syntax.Character =    { fg=pal.bright_yellow, bg="NONE"  }
syntax.Number =       { fg=pal.violet, bg="NONE" }
syntax.Boolean =      { fg=pal.violet, bg="NONE" }
syntax.Float =        { fg=pal.violet, bg="NONE" }
syntax.Identifier =   { fg=pal.yellow, bg="NONE" }
syntax.Function =     { fg=pal.bright_green, bg="NONE" }
syntax.Statement =    { fg=pal.bright_red, bg="NONE" }
syntax.Conditional =  { fg=pal.bright_red, bg="NONE" }
syntax.Repeat =       { fg=pal.bright_red, bg="NONE" }
syntax.Label =        { fg=pal.yellow, bg="NONE" }
syntax.Operator =     { fg=pal.bright_red, bg="NONE" }
syntax.Keyword  =     { fg=pal.bright_red, bg="NONE" }
syntax.Exception =    { fg=pal.bright_green, bg="NONE" }
syntax.PreProc =      { fg=pal.bright_red, bg="NONE" }
syntax.Include =      { fg=pal.bright_red, bg="NONE" }
syntax.Define =       { fg=pal.bright_red, bg="NONE" }
syntax.Macro =        { fg=pal.bright_green, bg="NONE" }
syntax.PreCondit =    { fg=pal.bright_green, bg="NONE" }
syntax.Type =         { fg=pal.bright_cyan, bg="NONE" }
syntax.StorageClass = { fg=pal.yellow, bg ="NONE", italic=true }
syntax.Structure =    { fg=pal.bright_cyan, bg="NONE", italic=true }
syntax.Typedef =      { fg=pal.bright_cyan, bg="NONE" }
syntax.Special =      { fg=pal.bright_cyan, bg="NONE", italic=true }
syntax.SpecialChar =  { fg=pal.bright_red, bg="NONE", italic=true }
syntax.Tag =          { fg=pal.bright_red, bg="NONE", italic=true }
syntax.Delimiter =    { fg=syntax.Comment.fg, bg="NONE" }
syntax.SpecialComment = { fg=syntax.Comment.fg, bg="NONE", italic=true }
syntax.Debug =        { fg="#BCA3A3", bg="NONE" }
syntax.Underlined =   { fg="#0A95FF", bg="NONE", sp=pal.blue, undercurl=true }
syntax.Ignore =       { fg=pal.bright_black, bg="NONE" }
syntax.Error =        { fg="NONE", bg="NONE", sp=pal.red, underline=true }
syntax.Todo =         { fg=pal.black, bg=pal.bright_cyan, bold=true }

-- See :help highlight-default
-- TEST: float window
-- :lua vim.api.nvim_open_win(0, true, { relative='win', width=120, height=15, border="single", win = 1001, row = 20, col = 20, zindex=zindex })
M.builtin = {}
local builtin = M.builtin

builtin.ColorColumn =  { fg="NONE", bg=pal.black2 }
builtin.Conceal =      { fg=syntax.Comment.fg, bg="NONE" }
builtin.CurSearch =    { fg=pal.black, bg=pal.yellow }
builtin.Cursor =       { fg=pal.black, bg=pal.white }
-- builtin.lCursor =      {}
-- builtin.CursorIM =     {}
builtin.CursorColumn = { fg="NONE", bg=pal.black2 }
builtin.CursorLine =   { fg="NONE", bg=pal.black3 }
builtin.Directory =    { fg=pal.bright_green, bg="NONE" }
builtin.DiffAdd =      { fg=pal.green, bg="NONE", bold=true }
builtin.DiffChange =   { fg=pal.bright_black, bg="NONE", bold=true }
builtin.DiffDelete =   { fg=pal.bright_red, bg="NONE", bold=true }
builtin.DiffText =     { fg=pal.black, bg=pal.bright_yellow, bold=true }
builtin.EndOfBuffer =  { fg=pal.gray2, bg="NONE" }
-- builtin.TermCursor =   {}
-- builtin.TermCursorNC = {}
builtin.ErrorMsg =     { fg=pal.bright_red, bg=pal.black2 }
builtin.WinSeparator = { fg=pal.gray2, bg="NONE" }
builtin.Folded =       { fg=pal.white, bg="#49483E" }
builtin.FoldColumn =   { fg=pal.gray2, bg=pal.black2 }
builtin.SignColumn =   { fg=pal.bright_green, bg=pal.black2 }
builtin.IncSearch =    { link="CurSearch" }
builtin.Substitute =   { link="Search" }
builtin.LineNr =       { fg=pal.gray2, bg=pal.black2 }
builtin.LineNrAbove =  { link="LineNr" }
builtin.LineNrBelow =  { link="LineNr" }
builtin.CursorLineNr = { fg=pal.white, bg=pal.black2 }
builtin.CursorLineFold = { link="FoldColumn" }
builtin.CursorLineSign = { link="SignColumn" }
builtin.MatchParen =   { fg=pal.black, bg=pal.yellow, bold=true }
builtin.ModeMsg =      { fg=pal.bright_yellow }
builtin.MsgArea =      { fg=pal.bright_white, bg=pal.black }
builtin.NonText =      { fg=pal.gray2, bg="NONE" }
builtin.Normal =       { fg=pal.bright_white, bg=pal.black }
builtin.NormalFloat =  { fg="NONE", bg=pal.black3 }
builtin.FloatBorder =  { fg=pal.gray, bg=pal.black3 }
builtin.FloatTitle =   { fg=pal.yellow, bg=pal.black3 }
builtin.NormalNC =     { link="Normal" }
builtin.Pmenu =        { fg=pal.bright_cyan, bg=pal.black3 }
builtin.PmenuSel =     { fg=pal.black, bg=pal.bright_black, bold=true }
builtin.PmenuKind =    { link="Pmenu" }
builtin.PmenuKindSel = { link="PmenuSel" }
builtin.PmenuExtra =   { link="Pmenu" }
builtin.PmenuExtraSel = { link="PmenuSel" }
builtin.PmenuSbar =    { fg="NONE", bg=pal.bright_black }
builtin.PmenuThumb =   { fg="NONE", bg=pal.white }
builtin.Question =     { fg=pal.bright_cyan, bg="NONE" }
builtin.QuickFixLine = { link="Search" }
builtin.Search =       { fg=pal.black, bg=pal.bright_yellow }
builtin.SpecialKey =   { fg=pal.gray2, bg="NONE" }
builtin.SpellBad =     { sp=pal.red, undercurl=true }
builtin.SpellCap =     { sp=pal.bright_blue, undercurl=true }
builtin.SpellLocal =   { sp=pal.bright_cyan, undercurl=true }
builtin.SpellRare =    { sp=pal.bright_white, undercurl=true }
builtin.StatusLine =   { fg=pal.bright_white, bg=pal.black3 }
builtin.StatusLineNC = { fg=pal.bright_black, bg="#080808" }
builtin.TabLine =      { fg=pal.bright_white, bg=pal.black }
builtin.TabLineFill =  { fg=pal.black, bg=pal.black }
builtin.TabLineSel =   { fg=pal.black, bg=pal.white }
builtin.Title =        { fg=pal.yellow, bg="NONE" }
builtin.Visual =       { fg="NONE", bg="#403D3D" }
builtin.VisualNOS =    { fg="NONE", bg="#403D3D" }
builtin.WarningMsg =   { fg=pal.bright_white, bg=pal.black3 }
builtin.Whitespace =   { link="NonText" }
builtin.WildMenu =     { link="Pmenu" }
builtin.WinBar =       { link="StatusLine" }
builtin.WinBarNC =     { link="StatusLineNC" }

-- if: config.display.monokai_original
-- Original Monokai colors
-- See https://github.com/textmate/monokai.tmbundle
M.monokai_original = {}
local monokai_original = M.monokai_original
monokai_original.Comment =     { fg="#75715E" }
monokai_original.Normal = { fg="#F8F8F2", bg="#272822" }
monokai_original.CursorLine = { bg="#3E3D32" }
monokai_original.CursorLineNr = { fg=pal.yellow }
monokai_original.CursorColumn = { bg="#3B3A32" }
monokai_original.ColorColumn = { bg="#3B3A32" }
monokai_original.LineNr = { fg="#8F908A", bg="#272822" }
monokai_original.NonText = { fg="#75715E" }
monokai_original.SpecialKey = { fg="#75715E" }

-- if: config.display.only_CursorLineNr
-- Highlight only CursorLineNr
M.only_CursorLineNr = {
    CursorLine   = { fg="NONE", bg="NONE" }
}

-- if: config.display.relativenumber
-- Highlight LineNr for relativenumbers
M.hi_relativenumber = {
    LineNr =       { fg=pal.white, bg="#232526" },
    LineNrAbove =  { fg="#465457", bg="#232526"  },
    LineNrBelow =  { fg="#465457", bg="#232526" }
}

-- if: config.display.bright_unfocus_window
-- Highlight unfocus window
M.hi_unfocus_window = {
    NormalNC = { fg=pal.bright_white, bg="#333739" }
}

-- Diagnostic & LSP
M.diagnostic = {}
local diag = M.diagnostic

diag.DiagnosticError = { fg=pal.bright_red, bg="NONE" }
diag.DiagnosticWarn  = { fg=pal.bright_yellow, bg="NONE" }
diag.DiagnosticInfo  = { fg=pal.white, bg="NONE" }
diag.DiagnosticHint  = { fg=pal.white, bg="NONE" }
diag.DiagnosticOk    = { fg=pal.bright_green, bg="NONE" }

diag.DiagnosticUnderlineError = { fg="NONE", bg="NONE", sp=pal.red, underline=true }
diag.DiagnosticUnderlineWarn  = { fg="NONE", bg="NONE", sp=pal.bright_yellow, underline=true }
diag.DiagnosticUnderlineInfo  = { fg="NONE", bg="NONE", sp=pal.bright_black, underline=true }
diag.DiagnosticUnderlineHint  = { fg="NONE", bg="NONE", sp=pal.bright_black, underline=true }
diag.DiagnosticUnderlineOk    = { fg="NONE", bg="NONE", sp=pal.bright_green, underline=true }

diag.DiagnosticVirtualTextError = { fg=pal.red, bg="NONE" }
diag.DiagnosticVirtualTextWarn  = { link="DiagnosticWarn" }
diag.DiagnosticVirtualTextInfo  = { link="DiagnosticInfo" }
diag.DiagnosticVirtualTextHint  = { link="DiagnosticHint" }
diag.DiagnosticVirtualTextOk    = { link="DiagnosticOk" }

diag.DiagnosticFloatingError = { fg=pal.red, bg="NONE" }
diag.DiagnosticFloatingWarn  = { link="DiagnosticWarn" }
diag.DiagnosticFloatingInfo  = { link="DiagnosticInfo" }
diag.DiagnosticFloatingHint  = { link="DiagnosticHint" }
diag.DiagnosticFloatingOk    = { link="DiagnosticOk" }

diag.DiagnosticDeprecated = { fg="NONE", bg="NONE", sp="NONE", strikethrough=true }
diag.DiagnosticUnnecessary = { link="Comment" }

-- See `:h lsp-highlight`
diag.LspReferenceText  = { fg="NONE", bg=pal.black3 }
diag.LspReferenceRead  = { fg="NONE", bg=pal.black3 }
diag.LspReferenceWrite = { fg="NONE", bg=pal.black3 }

--- TreeSitter
M.treesitter = {}
local ts = M.treesitter

-- Default
ts["@text"]              = { fg="NONE", bg="NONE" }
ts["@text.literal"]      = { link ="Comment" }
ts["@text.reference"]    = { link ="Identifier" }
ts["@text.title"]        = { link ="Title" }
ts["@text.uri"]          = { link ="Underlined" }
ts["@text.underline"]    = { link ="Underlined" }
ts["@text.todo"]         = { link ="Todo" }
ts["@comment"]           = { link="Comment" }
ts["@punctuation"]       = { link="Delimiter" }
ts["@constant"]          = { link="Constant" }
ts["@constant.builtin"]  = { link="Special" }
ts["@constant.macro"]    = { link="Define" }
ts["@define"]            = { link="Define" }
ts["@macro"]             = { link="Macro" }
ts["@string"]            = { link="String" }
ts["@string.escape"]     = { link="SpecialChar" }
ts["@string.special"]    = { link="SpecialChar" }
ts["@character"]         = { link="Character" }
ts["@character.special"] = { link="SpecialChar" }
ts["@number"]            = { link="Number" }
ts["@boolean"]           = { link="Boolean" }
ts["@float"]             = { link="Float" }
ts["@function"]          = { link="Function" }
ts["@function.builtin"]  = { link="Special" }
ts["@function.macro"]    = { link="Macro" }
ts["@parameter"]         = { link="Identifier" }
ts["@method"]            = { link="Function" }
ts["@field"]             = { link="Identifier" }
ts["@property"]          = { link="Identifier" }
ts["@constructor"]       = { link="Special" }
ts["@repeat"]            = { link="Repeat" }
ts["@label"]             = { link="Label" }
ts["@operator"]          = { link="Operator" }
ts["@keyword"]           = { link="Keyword" }
ts["@exception"]         = { link="Exception" }
ts["@variable"]          = { link="Identifier" }
ts["@type"]              = { link="Type" }
ts["@type.definition"]   = { link="Typedef" }
ts["@storageclass"]      = { link="StorageClass" }
ts["@namespace"]         = { link="Identifier" }
ts["@include"]           = { link="Include" }
ts["@preproc"]           = { link="PreProc" }
ts["@debug"]             = { link="Debug" }
ts["@tag"]               = { link="Tag" }
ts["@lsp.type.class"]         = { link="Structure" }
ts["@lsp.type.comment"]       = { link="Comment" }
ts["@lsp.type.decorator"]     = { link="Function" }
ts["@lsp.type.enum"]          = { link="Structure" }
ts["@lsp.type.enumMember"]    = { link="Constant" }
ts["@lsp.type.function"]      = { link="Function" }
ts["@lsp.type.interface"]     = { link="Structure" }
ts["@lsp.type.macro"]         = { link="Macro" }
ts["@lsp.type.method"]        = { link="Function" }
ts["@lsp.type.namespace"]     = { link="Structure" }
ts["@lsp.type.parameter"]     = { link="Identifier" }
ts["@lsp.type.property"]      = { link="Identifier" }
ts["@lsp.type.struct"]        = { link="Structure" }
ts["@lsp.type.type"]          = { link="Type" }
ts["@lsp.type.typeParameter"] = { link="Typedef" }
ts["@lsp.type.variable"]      = { link="Identifier" }

-- Non-default
ts["@text"]          = { fg=pal.bright_white, bg="NONE" }
ts["@text.emphasis"] = { fg=ts["@text"].fg, bg=ts["@text"].bg, italic=true }
ts["@text.strong"]   = { fg=ts["@text"].fg, bg=ts["@text"].bg, bold=true }

ts["@text.emphasis.markdown_inline"] = { link="@text.emphasis" }
ts["@text.strong.markdown_inline"]   = { link="@text.strong" }
ts["@text.todo.unchecked.markdown"]  = { fg=syntax.Comment.fg , bg="NONE", bold=true }
ts["@text.todo.checked.markdown"]    = { fg=pal.bright_green , bg="NONE", bold=true }

ts["@text.title.1"]        = { fg=pal.yellow,        bg="NONE" }
ts["@text.title.1.marker"] = { fg=pal.yellow,        bg="NONE" }
ts["@text.title.2"]        = { fg=pal.bright_cyan,   bg="NONE" }
ts["@text.title.2.marker"] = { fg=pal.bright_cyan,   bg="NONE" }
ts["@text.title.3"]        = { fg=pal.bright_green,  bg="NONE" }
ts["@text.title.3.marker"] = { fg=pal.bright_green,  bg="NONE" }
ts["@text.title.4"]        = { fg=pal.bright_red,    bg="NONE" }
ts["@text.title.4.marker"] = { fg=pal.bright_red,    bg="NONE" }
ts["@text.title.5"]        = { fg=pal.bright_violet, bg="NONE" }
ts["@text.title.5.marker"] = { fg=pal.bright_violet, bg="NONE" }
ts["@text.title.6"]        = { fg=pal.bright_blue,   bg="NONE" }
ts["@text.title.6.marker"] = { fg=pal.bright_blue,   bg="NONE" }

-- if: config.display.hi_formatted_text
-- Highlight formatted @text (emphasis, strong)
M.hi_formatted_text = {
    ["@text.emphasis"] = { fg=pal.yellow, bg=ts["@text"].bg, italic=true },
    ["@text.strong"] = { fg=pal.yellow, bg=ts["@text"].bg, bold=true }
}

ts["@symbol"] = { link="Constant" } -- TODO: WIP
ts["@type.builtin"]   = { fg=syntax.Type.fg, bg=syntax.Type.bg, italic=true }
ts["@type.qualifier"] = { link = "Keyword" }

--- Markdown
M.markdown = {}
local markdown = M.markdown

markdown.markdownBold   = { fg=ts["@text.strong"].fg, bg="NONE", bold=true }
markdown.markdownItalic = { fg=ts["@text.emphasis"].fg, bg="NONE", italic=true }
markdown.markdownCode               = { link="Normal" }
markdown.markdownCodeDelimiter      = { link="Delimiter" }
markdown.markdownHeadingDelimiter   = { link="Delimiter" }
markdown.markdownRule               = { link="Delimiter" }
markdown.markdownFootnote           = { link="Identifier" }
markdown.markdownFootnoteDefinition = { link="Identifier" }
markdown.markdownUrl                = { link="Underlined" }
markdown.markdownLinkDelimiter      = { link="Delimiter" }
markdown.markdownLinkText           = { link="Identifier" }
markdown.markdownLinkTextDelimiter  = { link="Delimiter" }
markdown.markdownEscape             = { link="SpecialChar" }

-- See @text.title.* in TreeSitter section
markdown.markdownH1          = { fg=pal.yellow,        bg="NONE" }
markdown.markdownH1Delimiter = { fg=pal.yellow,        bg="NONE" }
markdown.markdownH2          = { fg=pal.bright_cyan,   bg="NONE" }
markdown.markdownH2Delimiter = { fg=pal.bright_cyan,   bg="NONE" }
markdown.markdownH3          = { fg=pal.bright_green,  bg="NONE" }
markdown.markdownH3Delimiter = { fg=pal.bright_green,  bg="NONE" }
markdown.markdownH4          = { fg=pal.bright_red,    bg="NONE" }
markdown.markdownH4Delimiter = { fg=pal.bright_red,    bg="NONE" }
markdown.markdownH5          = { fg=pal.bright_violet, bg="NONE" }
markdown.markdownH5Delimiter = { fg=pal.bright_violet, bg="NONE" }
markdown.markdownH6          = { fg=pal.bright_blue,   bg="NONE" }
markdown.markdownH6Delimiter = { fg=pal.bright_blue,   bg="NONE" }


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

-- TODO: org-mode
M.orgmode = {}
local orgmode = M.orgmode
orgmode.org_bold = { fg=ts["@text.strong"].fg, bg="NONE", bold=true }
orgmode.org_italic = { fg=ts["@text.emphasis"].fg, bg="NONE", italic=true }

-- C
M.c = {}
local c = M.c

c.cTypedef = { link="Keyword" }
c.cStructure = { link="Keyword" }
c.cPreCondit = { link="PreProc" }
c.cPreConditMatch = { link="PreProc" }
c.cDefine = { link="Define" }

-- CPP
M.cpp = {}
local cpp = M.cpp
cpp.cppAccess = { link="Type" }
cpp.cppStructure = { link="Keyword" }

-- JSON
M.json = {}
local json = M.json

json.jsonNull = { link="Special" }
json.jsonQuote = { link="Delimiter" }

-- HTML
M.html = {}
local html = M.html
html.htmlTag = { link="Tag" }
html.htmlEndTag = { link="Tag" }

-- PHP
M.php = {}
local php = M.php
php.phpVarSelector = { link="Identifier" }
php.phpStructure = { link="Keyword" }
php.phpStorageClass = { link="Type" }
php.phpMemberSelector = { link="Operator" }
php.phpClasses = { link="Type" }

-- CSS
M.css = {}
local css = M.css
css.cssTagName = { link="Type" }
css.cssBraces = { link="Delimiter" }
css.cssClassName = { link="Identifier" }
css.cssClassNameDot = { link="Delimiter" }
css.cssIdentifier = { link="Identifier" }
css.cssPseudoClassId = { link="Identifier" }

-- JavaScript
M.javascript = {}
local javascript = M.javascript
javascript.javaScriptParens = { link="Delimiter" }
javascript.javaScriptBraces = { link="Delimiter" }
javascript.javaScriptIdentifier = { link="Keyword" }
javascript.javaScriptFunction = { link="Keyword" }

-- Typescript
M.typescript = {}
local typescript = M.typescript
typescript.typescriptVariable = { link="Keyword" }
typescript.typescriptVariableDeclaration = { link="Identifier" }
typescript.typescriptTypeAnnotation = { link="Delimiter" }
typescript.typescriptAssign = { link="Operator" }
typescript.typescriptparens = { link="Delimiter" }
typescript.typescriptBraces = { link="Delimiter" }
typescript.typescriptGlobal = { link="Identifier" }
typescript.typescriptBinaryOp = { link="Operator" }
typescript.typescriptLoopParen = { link="Operator" }
typescript.typescriptConsoleMethod = { link="Function" }
typescript.typescriptDotNotation = { link="Delimiter" }
typescript.typescriptTypeBracket = { link="Delimiter" }
typescript.typescriptMember = { link="Identifier" }
typescript.typescriptDOMFormProp = { link="Identifier" }
typescript.typescriptClassName = { link="Type" }
typescript.typescriptBOMWindowMethod = { link="Function" }
typescript.typescriptTypeReference = { link="Type" }
typescript.typescriptTypeBrackets = { link="Delimiter" }
typescript.typescriptArrowFunc = { link="Operator" }
typescript.typescriptPromiseMethod = { link="Function" }
typescript.typescriptCall = { link="Identifier" }
typescript.typescriptFuncComma = { link="Delimiter" }
typescript.typescriptTypeParameter = { link="Type" }

-- XML
M.xml = {}
local xml = M.xml
xml.xmlTag = { link="Tag" }
xml.xmlTagName = { link="Tag" }
xml.xmlAttrib = { link="Tag" }
xml.xmlProcessing = { link="Tag" }
xml.xmlEqual = { link="Delimiter" }

-- Ruby
M.ruby = {}
local ruby = M.ruby
ruby.rubyCurlyBlockDelimiter = { link="Delimiter" }

-- Golang
M.go = {}
local go = M.go
go.goFormatSpecifier = { link="SpecialChar" }
go.goEscapeC = { link="SpecialChar" }
go.goBuiltins = { link="Special" }
go.goPredefinedIdentifiers = { link="Special" }

-- Python
M.python = {}
local python = M.python
python.pythonBuiltin = { link="Special" }

-- TeX
M.tex = {}
local tex = M.tex
tex.texSection = { link="Identifier" }
tex.texStatement = { link="Function" }
tex.texInputFile = { link="String" }

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

-- Lua
M.lua = {}
local lua = M.lua
lua.luaFunction = { link="Keyword" }
lua.luaFunc = { link="Function" }
lua.luaMetaMethod = { link="Identifier" }

-- SH
M.sh = {}
local sh = M.sh
sh.shVarAssign = { link="Keyword" }
sh.shDerefSimple = { link="Identifier" }
sh.shRange = { link="Delimiter" }
sh.shQuote = { link="String" }
sh.shLoop = { link="Repeat" }
sh.shFor = { link="Identifier" }
sh.shSnglCase = { link="Delimiter" }

-- SQL
M.sql = {}
local sql = M.sql
sql.sqlKeyword = { link="Keyword" }
sql.shStatement = { link="Special" }

-- YAML
M.yaml = {}
local yaml = M.yaml
yaml.yamlKeyValueDelimiter = { link="Delimiter" }
yaml.yamlBlockCollectionItemStart = { link="Delimiter" }
yaml.yamlPlainScalar = { link="String" }
yaml.yamlNull = { link="Special" }

-- Gitgutter
M.gitgutter = {}
local gitgutter = M.gitgutter
gitgutter.GitGutterAdd    = { fg=pal.bright_green, bg="#232526", bold=true}
gitgutter.GitGutterChange = { fg=pal.bright_black, bg="#232526", bold=true}
gitgutter.GitGutterDelete = { fg=pal.bright_red, bg="#232526", bold=true}
gitgutter.GitGutterAddLine    = { fg=pal.black, bg=pal.bright_green }
gitgutter.GitGutterChangeLine = { fg=pal.black, bg=pal.bright_black }
gitgutter.GitGutterDeleteLine = { fg=pal.black, bg=pal.bright_red }

-- Git Signs
M.gitsigns = {}
local gitsigns = M.gitsigns

gitsigns.GitSignsAdd    = { fg=pal.bright_green, bg="#232526", bold=true}
gitsigns.GitSignsChange = { fg=pal.bright_black, bg="#232526", bold=true}
gitsigns.GitSignsDelete = { fg=pal.bright_red, bg="#232526", bold=true}
gitsigns.GitSignsAddLn    = { fg=pal.black, bg=pal.bright_green }
gitsigns.GitSignsChangeLn = { fg=pal.black, bg=pal.bright_black }
gitsigns.GitSignsDeleteLn = { fg=pal.black, bg=pal.bright_red }

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

-- IndentBlankline
-- TODO: #7E8E91 or pal.yellow for *ContextChar and *ContextStart
M.indentblankline = {}
local indentblankline = M.indentblankline

indentblankline.IndentBlanklineContextChar  = { fg="#7E8E91", bg="NONE", nocombine=true }
indentblankline.IndentBlanklineContextStart = { sp="#7E8E91", bg="NONE", nocombine=true, underline=true }
indentblankline.IndentBlanklineChar               = { fg="#31383A", bg="NONE", nocombine=true }
indentblankline.IndentBlanklineSpaceChar          = { fg="#31383A", bg="NONE", nocombine=true }
indentblankline.IndentBlanklineSpaceCharBlankline = { fg="#31383A", bg="NONE", nocombine=true }

-- TODO: COC.nvim (unchecked)
-- CocHighlightText
-- CocHighlightRead
-- CocHighlightWrite

-- nvim-cmp
M.nvim_cmp = {}
local nvim_cmp = M.nvim_cmp

nvim_cmp.CmpItemAbbr = { fg="#66d9ef", bg="NONE" }
nvim_cmp.CmpItemAbbrDeprecated = { fg="#7E8E91", bg="NONE" }
nvim_cmp.CmpItemAbbrMatch = { fg=pal.yellow, bg="NONE", bold=true }
nvim_cmp.CmpItemAbbrMatchFuzzy = { fg=pal.yellow, bg="NONE", bold=true }
nvim_cmp.CmpItemKind = { fg=pal.white, bg="NONE" }
nvim_cmp.CmpItemMenu = { fg=pal.gray, bg="NONE" }

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

-- WhickKey
M.whichkey = {}
local whichkey = M.whichkey

whichkey.WhichKeyFloat = { fg="NONE", bg="#171717" }

-- TODO: Dashboard (?)
-- TODO: hlargs.nvim (?)

-- TODO: background
if vim.opt.background == "dark" then
elseif vim.opt.background == "light" then
end

return M
