-- GitHub Dark Contrast theme for Neovim
-- Converted from Zed theme by GitHub: Zed Theme Importer/MordFustang21/Peanutt42
-- Compatible with Neovim 0.8+


local colors = {
	-- Base
	bg                   = "#050505",
	bg_dark              = "#070707",
	bg_surface           = "#0b0b0b",
	bg_elevated          = "#1e1e1e",
	bg_element           = "#323232",
	bg_active_line       = "#151b23",
	bg_subheader         = "#151b23",
	bg_predictive        = "#212830",
	bg_hidden            = "#262c36",
	bg_warning           = "#161b22",

	fg                   = "#ffffff",
	fg_muted             = "#babec4",
	fg_accent            = "#74b9ff",
	fg_line_nr           = "#9aa2b1",
	fg_comment           = "#8b949e",

	border               = "#30363d",
	border_focused       = "#1f6feb",
	indent_guide         = "#2f3337",
	indent_guide_active  = "#666870",
	wrap_guide           = "#30363d",

	-- Syntax
	syn_boolean          = "#79c0ff",
	syn_comment          = "#8b949e",
	syn_documentation    = "#d1dae4",
	syn_constant         = "#79c0ff",
	syn_constructor      = "#7ee787",
	syn_function         = "#b776fc",
	syn_keyword          = "#ff5549",
	syn_label            = "#ffa657",
	syn_number           = "#79c0ff",
	syn_string           = "#a5d6ff",
	syn_string_special   = "#ff7b72",
	syn_tag              = "#22b72f",
	syn_title            = "#ff9a44",
	syn_type             = "#79c0ff",
	syn_variable         = "#f4f4f4",
	syn_variable_special = "#79c0ff",
	syn_property         = "#ff9a44",

	-- Diagnostics / Git
	error                = "#f85149",
	warning              = "#fbe557",
	info                 = "#f0b72f",
	hint                 = "#7d8590",
	created              = "#56d364",
	deleted              = "#f85149",
	modified             = "#58a6ff",
	conflict             = "#db6d28",
	ignored              = "#6e7681",

	-- Terminal ANSI
	ansi_black           = "#484f58",
	ansi_bright_black    = "#6e7681",
	ansi_red             = "#ff7b72",
	ansi_bright_red      = "#ffa198",
	ansi_green           = "#3fb950",
	ansi_bright_green    = "#56d364",
	ansi_yellow          = "#d29922",
	ansi_bright_yellow   = "#e3b341",
	ansi_blue            = "#58a6ff",
	ansi_bright_blue     = "#79c0ff",
	ansi_magenta         = "#bc8cff",
	ansi_bright_magenta  = "#d2a8ff",
	ansi_cyan            = "#39c5cf",
	ansi_bright_cyan     = "#56d4dd",
	ansi_white           = "#b1bac4",
	ansi_bright_white    = "#ffffff",
}

local c = colors
local hi = vim.api.nvim_set_hl

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.o.background = "dark"
vim.g.colors_name = "github_dark_contrast"

-- ────────────────────────────────────────────────
-- Editor UI
-- ────────────────────────────────────────────────
hi(0, "Normal", { fg = c.fg, bg = c.bg })
hi(0, "NormalFloat", { fg = c.fg, bg = c.bg_elevated })
hi(0, "NormalNC", { fg = c.fg, bg = c.bg })
hi(0, "FloatBorder", { fg = c.border, bg = c.bg_elevated })
hi(0, "FloatTitle", { fg = c.fg_accent, bg = c.bg_elevated, bold = true })

hi(0, "Cursor", { fg = c.bg, bg = c.fg })
hi(0, "CursorLine", { bg = c.bg_active_line })
hi(0, "CursorLineNr", { fg = c.fg, bg = c.bg_active_line, bold = true })
hi(0, "CursorColumn", { bg = c.bg_active_line })

hi(0, "LineNr", { fg = c.fg_line_nr })
hi(0, "SignColumn", { fg = c.fg_line_nr, bg = c.bg })
hi(0, "ColorColumn", { bg = c.bg_active_line })

hi(0, "StatusLine", { fg = c.fg_muted, bg = c.bg_surface })
hi(0, "StatusLineNC", { fg = c.ignored, bg = c.bg_surface })
hi(0, "WinBar", { fg = c.fg, bg = c.bg })
hi(0, "WinBarNC", { fg = c.fg_muted, bg = c.bg })
hi(0, "WinSeparator", { fg = c.border })

hi(0, "TabLine", { fg = c.fg_muted, bg = c.bg_surface })
hi(0, "TabLineFill", { bg = c.bg_surface })
hi(0, "TabLineSel", { fg = c.fg, bg = c.bg, bold = true })

hi(0, "Pmenu", { fg = c.fg_muted, bg = c.bg_elevated })
hi(0, "PmenuSel", { fg = c.fg, bg = c.bg_active_line })
hi(0, "PmenuSbar", { bg = c.bg_element })
hi(0, "PmenuThumb", { bg = c.fg_comment })
hi(0, "PmenuBorder", { fg = c.border, bg = c.bg_elevated })

hi(0, "Search", { fg = c.bg, bg = c.syn_string })
hi(0, "IncSearch", { fg = c.bg, bg = c.fg_accent, bold = true })
hi(0, "CurSearch", { fg = c.bg, bg = c.fg_accent, bold = true })
hi(0, "Substitute", { fg = c.bg, bg = c.syn_keyword })

hi(0, "Visual", { bg = "#264f78" })
hi(0, "VisualNOS", { bg = "#264f78" })

hi(0, "Folded", { fg = c.fg_comment, bg = c.bg_subheader })
hi(0, "FoldColumn", { fg = c.fg_comment, bg = c.bg })

hi(0, "Directory", { fg = c.fg_accent })
hi(0, "Title", { fg = c.syn_title, bold = true })
hi(0, "MatchParen", { fg = c.syn_string, bold = true, underline = true })

hi(0, "NonText", { fg = c.indent_guide })
hi(0, "SpecialKey", { fg = c.indent_guide })
hi(0, "Whitespace", { fg = c.indent_guide })

hi(0, "EndOfBuffer", { fg = c.bg })
hi(0, "VertSplit", { fg = c.border })

hi(0, "Question", { fg = c.syn_constructor })
hi(0, "MoreMsg", { fg = c.syn_constructor })
hi(0, "ModeMsg", { fg = c.fg, bold = true })
hi(0, "MsgSeparator", { fg = c.border })
hi(0, "ErrorMsg", { fg = c.error })
hi(0, "WarningMsg", { fg = c.warning })

hi(0, "SpellBad", { undercurl = true, sp = c.error })
hi(0, "SpellCap", { undercurl = true, sp = c.warning })
hi(0, "SpellRare", { undercurl = true, sp = c.info })
hi(0, "SpellLocal", { undercurl = true, sp = c.syn_cyan })

hi(0, "QuickFixLine", { bg = c.bg_active_line })

-- ────────────────────────────────────────────────
-- Syntax highlighting
-- ────────────────────────────────────────────────
hi(0, "Comment", { fg = c.syn_comment, italic = true })
hi(0, "SpecialComment", { fg = c.syn_comment, italic = true })

hi(0, "Constant", { fg = c.syn_constant })
hi(0, "String", { fg = c.syn_string })
hi(0, "Character", { fg = c.syn_string })
hi(0, "Number", { fg = c.syn_number })
hi(0, "Float", { fg = c.syn_number })
hi(0, "Boolean", { fg = c.syn_boolean })

hi(0, "Identifier", { fg = c.syn_variable })
hi(0, "Function", { fg = c.syn_function })

hi(0, "Statement", { fg = c.syn_keyword })
hi(0, "Conditional", { fg = c.syn_keyword })
hi(0, "Repeat", { fg = c.syn_keyword })
hi(0, "Label", { fg = c.syn_label })
hi(0, "Operator", { fg = c.fg })
hi(0, "Keyword", { fg = c.syn_keyword })
hi(0, "Exception", { fg = c.syn_keyword })

hi(0, "PreProc", { fg = c.syn_keyword })
hi(0, "Include", { fg = c.syn_keyword })
hi(0, "Define", { fg = c.syn_keyword })
hi(0, "Macro", { fg = c.syn_keyword })
hi(0, "PreCondit", { fg = c.syn_keyword })

hi(0, "Type", { fg = c.syn_type })
hi(0, "StorageClass", { fg = c.syn_keyword })
hi(0, "Structure", { fg = c.syn_keyword })
hi(0, "Typedef", { fg = c.syn_keyword })

hi(0, "Special", { fg = c.syn_string_special })
hi(0, "SpecialChar", { fg = c.syn_string_special })
hi(0, "Tag", { fg = c.syn_tag })
hi(0, "Delimiter", { fg = c.fg_muted })
hi(0, "Debug", { fg = c.syn_label })

hi(0, "Underlined", { underline = true })
hi(0, "Ignore", { fg = c.ignored })
hi(0, "Error", { fg = c.error })
hi(0, "Todo", { fg = c.bg, bg = c.info, bold = true })

-- ================================================
-- Treesitter (nvim-treesitter highlights)
-- run :h treesitter-highlight-groups to view the list of possible @ categories
-- ================================================

hi(0, "@variable", { fg = c.syn_variable })
hi(0, "@variable.builtin", { fg = c.syn_variable_special })
hi(0, "@variable.parameter", { fg = c.syn_variable })
hi(0, "@variable.parameter.builtin", { fg = c.syn_variable_special })
hi(0, "@variable.member", { fg = c.syn_property })

hi(0, "@constant", { fg = c.syn_constant })
hi(0, "@constant.builtin", { fg = c.syn_constant })
hi(0, "@constant.macro", { fg = c.syn_constant })

hi(0, "@module", { fg = c.syn_type })
hi(0, "@module.builtin", { fg = c.syn_type })

hi(0, "@label", { fg = c.syn_label })

hi(0, "@string", { fg = c.syn_string })
hi(0, "@string.documentation", { fg = c.syn_documentation })
hi(0, "@string.regex", { fg = c.syn_string })
hi(0, "@string.escape", { fg = c.syn_string_special })
hi(0, "@string.special", { fg = c.syn_string })
hi(0, "@string.special.symbol", { fg = c.syn_string })
hi(0, "@string.special.path", { fg = c.syn_string, underline = true })
hi(0, "@string.special.url", { fg = c.syn_string, underline = true })

hi(0, "@character", { fg = c.syn_string })
hi(0, "@character.special", { fg = c.syn_string_special })

hi(0, "@boolean", { fg = c.syn_boolean })

hi(0, "@number", { fg = c.syn_number })
hi(0, "@number.float", { fg = c.syn_number })

hi(0, "@type", { fg = c.syn_type })
hi(0, "@type.builtin", { fg = c.syn_type })
hi(0, "@type.definition", { fg = c.syn_type })

hi(0, "@attribute", { fg = c.syn_label })
hi(0, "@attribute.builtin", { fg = c.syn_keyword })

hi(0, "@property", { fg = c.syn_property })

hi(0, "@function", { fg = c.syn_function })
hi(0, "@function.builtin", { fg = c.syn_function })
hi(0, "@function.macro", { fg = c.syn_function })
hi(0, "@function.method", { fg = c.syn_function })
hi(0, "@function.method.call", { fg = c.syn_function })

hi(0, "@constructor", { fg = c.syn_constructor })

hi(0, "@operator", { fg = c.fg })

hi(0, "@keyword", { fg = c.syn_keyword })
hi(0, "@keyword.coroutine", { fg = c.syn_keyword })
hi(0, "@keyword.function", { fg = c.syn_keyword })
hi(0, "@keyword.operator", { fg = c.syn_keyword })
hi(0, "@keyword.import", { fg = c.syn_keyword })
hi(0, "@keyword.type", { fg = c.syn_keyword })
hi(0, "@keyword.modifier", { fg = c.syn_keyword })
hi(0, "@keyword.repeat", { fg = c.syn_keyword })
hi(0, "@keyword.return", { fg = c.syn_keyword })
hi(0, "@keyword.debug", { fg = c.syn_keyword })
hi(0, "@keyword.exception", { fg = c.syn_keyword })
hi(0, "@keyword.conditional", { fg = c.syn_keyword })
hi(0, "@keyword.conditional.ternary", { fg = c.fg })
hi(0, "@keyword.directive", { fg = c.syn_keyword })
hi(0, "@keyword.directive.define", { fg = c.syn_keyword })

hi(0, "@punctuation.delimiter", { fg = c.fg_muted })
hi(0, "@punctuation.bracket", { fg = c.fg_muted })
hi(0, "@punctuation.special", { fg = c.syn_string_special })

hi(0, "@comment", { fg = c.syn_comment, italic = true })
hi(0, "@comment.documentation", { fg = c.syn_documentation, italic = true })
hi(0, "@comment.error", { fg = c.error, italic = true })
hi(0, "@comment.warning", { fg = c.warning, italic = true })
hi(0, "@comment.todo", { fg = c.bg_dark, bg = c.info, italic = true })
hi(0, "@comment.note", { fg = c.info, italic = true })

hi(0, "@markup.strong", { bold = true })
hi(0, "@markup.italic", { italic = true })
hi(0, "@markup.strikethrough", { strikethrough = true })
hi(0, "@markup.underline", { underline = true })
hi(0, "@markup.heading", { fg = c.syn_title, bold = true })
hi(0, "@markup.link", { fg = c.syn_string, underline = true })
hi(0, "@markup.link.url", { fg = c.syn_string, underline = true })
hi(0, "@markup.raw", { fg = c.syn_string })
hi(0, "@markup.list", { fg = c.syn_keyword })

-- TODO: @diff.plus, @diff.minus, @diff.delta

hi(0, "@tag", { fg = c.syn_tag })
hi(0, "@tag.builtin", { fg = c.syn_keyword })
hi(0, "@tag.attribute", { fg = c.syn_label })
hi(0, "@tag.delimiter", { fg = c.fg_muted })

-- ================================================
-- LSP semantic tokens
-- ================================================
hi(0, "@lsp.type.class", { fg = c.syn_type })
hi(0, "@lsp.type.comment", { fg = c.syn_comment, italic = true })
hi(0, "@lsp.type.decorator", { fg = c.syn_keyword })
hi(0, "@lsp.type.enum", { fg = c.syn_type })
hi(0, "@lsp.type.enumMember", { fg = c.syn_constant })
hi(0, "@lsp.type.event", { fg = c.syn_type })
hi(0, "@lsp.type.function", { fg = c.syn_function })
hi(0, "@lsp.type.interface", { fg = c.syn_type })
hi(0, "@lsp.type.keyword", { fg = c.syn_keyword })
hi(0, "@lsp.type.macro", { fg = c.syn_function })
hi(0, "@lsp.type.method", { fg = c.syn_function })
hi(0, "@lsp.type.modifier", { fg = c.syn_keyword })
hi(0, "@lsp.type.namespace", { fg = c.fg_muted })
hi(0, "@lsp.type.number", { fg = c.syn_number })
hi(0, "@lsp.type.operator", { fg = c.syn_keyword })
hi(0, "@lsp.type.parameter", { fg = c.syn_variable })
hi(0, "@lsp.type.property", { fg = c.syn_property })
hi(0, "@lsp.type.regexp", { fg = c.syn_string })
hi(0, "@lsp.type.string", { fg = c.syn_string })
hi(0, "@lsp.type.struct", { fg = c.syn_type })
hi(0, "@lsp.type.type", { fg = c.syn_type })
hi(0, "@lsp.type.typeParameter", { fg = c.syn_type })
hi(0, "@lsp.type.variable", { fg = c.syn_variable })
hi(0, "@lsp.type.typeAlias", { fg = c.syn_type })
hi(0, "@lsp.type.derive", { fg = c.syn_type })
hi(0, "@lsp.mod.constructor", { fg = c.syn_function })

-- ================================================
-- Language specific customization
-- ================================================
hi(0, "htmlTag", { fg = c.syn_function })
hi(0, "htmlEndTag", { fg = c.syn_function })
hi(0, "htmlTagName", { fg = c.syn_type })
hi(0, "htmlArg", { fg = c.syn_label })
hi(0, "htmlTagN", { fg = c.fg })
hi(0, "htmlSpecialTagName", { fg = c.syn_type })
hi(0, "htmlLink", { fg = c.fg_line_nr, underline = true })
hi(0, "htmlSpecialChar", { fg = c.syn_keyword })
hi(0, "htmlBold", { fg = c.fg, bg = c.bg, bold = true })
hi(0, "htmlBoldUnderline", { fg = c.fg, bg = c.bg, bold = true, underline = true })
hi(0, "htmlBoldItalic", { fg = c.fg, bg = c.bg, bold = true, italic = true })
hi(0, "htmlBoldUnderlineItalic", { fg = c.fg, bg = c.bg, bold = true, italic = true, underline = true })
hi(0, "htmlUnderline", { fg = c.fg, bg = c.bg, underline = true })
hi(0, "htmlUnderlineItalic", { fg = c.fg, bg = c.bg, italic = true, underline = true })
hi(0, "htmlItalic", { fg = c.fg, bg = c.bg, italic = true })
hi(0, "xmlTag", { fg = c.syn_function })
hi(0, "xmlEndTag", { fg = c.syn_function })
hi(0, "xmlTagName", { fg = c.syn_type })
hi(0, "xmlEqual", { fg = c.syn_type })
hi(0, "docbkKeyword", { fg = c.syn_function })
hi(0, "xmlDocTypeDecl", { fg = c.syn_comment })
hi(0, "xmlDocTypeKeyword", { fg = c.syn_constant })
hi(0, "xmlCdataStart", { fg = c.syn_comment })
hi(0, "xmlCdataCdata", { fg = c.syn_constant })
hi(0, "dtdFunction", { fg = c.syn_comment })
hi(0, "dtdTagName", { fg = c.syn_constant })
hi(0, "xmlAttrib", { fg = c.syn_label })
hi(0, "xmlProcessingDelim", { fg = c.syn_comment })
hi(0, "dtdParamEntityPunct", { fg = c.syn_comment })
hi(0, "dtdParamEntityDPunct", { fg = c.syn_comment })
hi(0, "xmlAttribPunct", { fg = c.syn_comment })
hi(0, "xmlEntity", { fg = c.syn_keyword })
hi(0, "xmlEntityPunct", { fg = c.syn_keyword })
hi(0, "clojureKeyword", { fg = c.syn_type })
hi(0, "clojureCond", { fg = c.syn_label })
hi(0, "clojureSpecial", { fg = c.syn_label })
hi(0, "clojureDefine", { fg = c.syn_label })
hi(0, "clojureFunc", { fg = c.syn_title })
hi(0, "clojureRepeat", { fg = c.syn_title })
hi(0, "clojureCharacter", { fg = c.syn_function })
hi(0, "clojureStringEscape", { fg = c.syn_function })
hi(0, "clojureException", { fg = c.syn_keyword })
hi(0, "clojureRegexp", { fg = c.syn_function })
hi(0, "clojureRegexpEscape", { fg = c.syn_function })
hi(0, "clojureRegexpCharClass", { fg = c.fg_line_nr, bold = true })
hi(0, "clojureRegexpMod", { fg = c.fg_line_nr, bold = true })
hi(0, "clojureRegexpQuantifier", { fg = c.fg_line_nr, bold = true })
hi(0, "clojureParen", { fg = c.fg_muted })
hi(0, "clojureAnonArg", { fg = c.syn_title })
hi(0, "clojureVariable", { fg = c.syn_type })
hi(0, "clojureMacro", { fg = c.syn_label })
hi(0, "clojureMeta", { fg = c.syn_title })
hi(0, "clojureDeref", { fg = c.syn_title })
hi(0, "clojureQuote", { fg = c.syn_title })
hi(0, "clojureUnquote", { fg = c.syn_title })
hi(0, "cOperator", { fg = c.syn_constant })
hi(0, "cStructure", { fg = c.syn_keyword })
hi(0, "cppOperator", { fg = c.syn_constant })
hi(0, "pythonBuiltin", { fg = c.syn_label })
hi(0, "pythonBuiltinObj", { fg = c.syn_label })
hi(0, "pythonBuiltinFunc", { fg = c.syn_label })
hi(0, "pythonFunction", { fg = c.syn_function })
hi(0, "pythonDecorator", { fg = c.syn_keyword })
hi(0, "pythonInclude", { fg = c.syn_type })
hi(0, "pythonImport", { fg = c.syn_type })
hi(0, "pythonRun", { fg = c.syn_type })
hi(0, "pythonCoding", { fg = c.syn_type })
hi(0, "pythonOperator", { fg = c.syn_keyword })
hi(0, "pythonException", { fg = c.syn_keyword })
hi(0, "pythonExceptions", { fg = c.syn_constant })
hi(0, "pythonBoolean", { fg = c.syn_constant })
hi(0, "pythonDot", { fg = c.fg_muted })
hi(0, "pythonConditional", { fg = c.syn_keyword })
hi(0, "pythonRepeat", { fg = c.syn_keyword })
hi(0, "pythonDottedName", { fg = c.syn_constructor })
hi(0, "cssBraces", { fg = c.fg_muted })
hi(0, "cssFunctionName", { fg = c.syn_title })
hi(0, "cssIdentifier", { fg = c.syn_label })
hi(0, "cssClassName", { fg = c.syn_constructor })
hi(0, "cssColor", { fg = c.syn_type })
hi(0, "cssSelectorOp", { fg = c.syn_type })
hi(0, "cssSelectorOp2", { fg = c.syn_type })
hi(0, "cssImportant", { fg = c.syn_constructor })
hi(0, "cssVendor", { fg = c.fg })
hi(0, "cssTextProp", { fg = c.syn_property })
hi(0, "cssAnimationProp", { fg = c.syn_property })
hi(0, "cssUIProp", { fg = c.syn_property })
hi(0, "cssTransformProp", { fg = c.syn_property })
hi(0, "cssTransitionProp", { fg = c.syn_property })
hi(0, "cssPrintProp", { fg = c.syn_property })
hi(0, "cssPositioningProp", { fg = c.syn_property })
hi(0, "cssBoxProp", { fg = c.syn_property })
hi(0, "cssFontDescriptorProp", { fg = c.syn_property })
hi(0, "cssFlexibleBoxProp", { fg = c.syn_property })
hi(0, "cssBorderOutlineProp", { fg = c.syn_property })
hi(0, "cssBackgroundProp", { fg = c.syn_property })
hi(0, "cssMarginProp", { fg = c.syn_property })
hi(0, "cssListProp", { fg = c.syn_property })
hi(0, "cssTableProp", { fg = c.syn_property })
hi(0, "cssFontProp", { fg = c.syn_property })
hi(0, "cssPaddingProp", { fg = c.syn_property })
hi(0, "cssDimensionProp", { fg = c.syn_property })
hi(0, "cssRenderProp", { fg = c.syn_property })
hi(0, "cssColorProp", { fg = c.syn_property })
hi(0, "cssGeneratedContentProp", { fg = c.syn_property })
hi(0, "javaScriptBraces", { fg = c.fg_muted })
hi(0, "javaScriptFunction", { fg = c.syn_function })
hi(0, "javaScriptIdentifier", { fg = c.syn_keyword })
hi(0, "javaScriptMember", { fg = c.syn_property })
hi(0, "javaScriptNumber", { fg = c.syn_constant })
hi(0, "javaScriptNull", { fg = c.syn_constant })
hi(0, "javaScriptParens", { fg = c.fg_muted })
hi(0, "typescriptReserved", { fg = c.syn_function })
hi(0, "typescriptLabel", { fg = c.syn_function })
hi(0, "typescriptFuncKeyword", { fg = c.syn_keyword })
hi(0, "typescriptEnumKeyword", { fg = c.syn_keyword })
hi(0, "typescriptIdentifier", { fg = c.syn_label })
hi(0, "typescriptIdentifierName", { fg = c.syn_type })
hi(0, "typescriptBraces", { fg = c.fg_muted })
hi(0, "typescriptEndColons", { fg = c.fg })
hi(0, "typescriptDOMObjects", { fg = c.fg })
hi(0, "typescriptAjaxMethods", { fg = c.fg })
hi(0, "typescriptLogicSymbols", { fg = c.fg })
hi(0, "typescriptDocSeeTag", { fg = c.syn_comment })
hi(0, "typescriptDocParam", { fg = c.syn_comment })
hi(0, "typescriptDocTags", { fg = c.syn_title })
hi(0, "typescriptGlobalObjects", { fg = c.fg })
hi(0, "typescriptParens", { fg = c.fg_muted })
hi(0, "typescriptOpSymbols", { fg = c.fg_muted })
hi(0, "typescriptHtmlElemProperties", { fg = c.fg })
hi(0, "typescriptNull", { fg = c.syn_constant })
hi(0, "typescriptInterpolationDelimiter", { fg = c.syn_function })
hi(0, "typescriptAliasDeclaration", { fg = c.syn_type })
hi(0, "typescriptClassName", { fg = c.syn_type })
hi(0, "typescriptEnum", { fg = c.syn_type })
hi(0, "typescriptInterfaceName", { fg = c.syn_type })
hi(0, "typescriptTypeParameter", { fg = c.syn_type })
hi(0, "typescriptTypeReference", { fg = c.syn_type })
hi(0, "typescriptMember", { fg = c.syn_property })
hi(0, "typescriptProp", { fg = c.syn_property })
hi(0, "typescriptOperator", { fg = c.syn_keyword })
hi(0, "typescriptGlobal", { fg = c.syn_type })
hi(0, "purescriptModuleKeyword", { fg = c.syn_function })
hi(0, "purescriptModuleName", { fg = c.fg })
hi(0, "purescriptWhere", { fg = c.syn_function })
hi(0, "purescriptDelimiter", { fg = c.fg_line_nr })
hi(0, "purescriptType", { fg = c.fg })
hi(0, "purescriptImportKeyword", { fg = c.syn_function })
hi(0, "purescriptHidingKeyword", { fg = c.syn_function })
hi(0, "purescriptAsKeyword", { fg = c.syn_function })
hi(0, "purescriptStructure", { fg = c.syn_function })
hi(0, "purescriptOperator", { fg = c.syn_type })
hi(0, "purescriptTypeVar", { fg = c.fg })
hi(0, "purescriptConstructor", { fg = c.fg })
hi(0, "purescriptFunction", { fg = c.fg })
hi(0, "purescriptConditional", { fg = c.syn_label })
hi(0, "purescriptBacktick", { fg = c.syn_label })
hi(0, "coffeeExtendedOp", { fg = c.fg_muted })
hi(0, "coffeeSpecialOp", { fg = c.fg_muted })
hi(0, "coffeeCurly", { fg = c.syn_label })
hi(0, "coffeeParen", { fg = c.fg_muted })
hi(0, "coffeeBracket", { fg = c.syn_label })
hi(0, "rubyStringDelimiter", { fg = c.syn_constructor })
hi(0, "rubyInterpolationDelimiter", { fg = c.syn_function })
hi(0, "rubyDefinedOperator", { fg = c.syn_label })
hi(0, "objcTypeModifier", { fg = c.syn_keyword })
hi(0, "objcDirective", { fg = c.syn_type })
hi(0, "goDirective", { fg = c.syn_function })
hi(0, "goConstants", { fg = c.syn_constant })
hi(0, "goDeclaration", { fg = c.syn_keyword })
hi(0, "goDeclType", { fg = c.syn_type })
hi(0, "goBuiltins", { fg = c.syn_label })
hi(0, "luaIn", { fg = c.syn_keyword })
hi(0, "luaFunction", { fg = c.syn_function })
hi(0, "luaTable", { fg = c.syn_label })
hi(0, "moonSpecialOp", { fg = c.fg_muted })
hi(0, "moonExtendedOp", { fg = c.fg_muted })
hi(0, "moonFunction", { fg = c.fg_muted })
hi(0, "moonObject", { fg = c.syn_title })
hi(0, "javaAnnotation", { fg = c.syn_type })
hi(0, "javaDocTags", { fg = c.syn_function })
hi(0, "javaCommentTitle", { fg = c.syn_title })
hi(0, "javaParen", { fg = c.fg_muted })
hi(0, "javaParen1", { fg = c.fg_muted })
hi(0, "javaParen2", { fg = c.fg_muted })
hi(0, "javaParen3", { fg = c.fg_muted })
hi(0, "javaParen4", { fg = c.fg_muted })
hi(0, "javaParen5", { fg = c.fg_muted })
hi(0, "javaOperator", { fg = c.syn_keyword })
hi(0, "javaVarArg", { fg = c.syn_constructor })
hi(0, "elixirDocString", { fg = c.syn_comment })
hi(0, "elixirStringDelimiter", { fg = c.syn_constructor })
hi(0, "elixirInterpolationDelimiter", { fg = c.syn_function })
hi(0, "elixirModuleDeclaration", { fg = c.syn_title })
hi(0, "scalaNameDefinition", { fg = c.fg })
hi(0, "scalaCaseFollowing", { fg = c.fg })
hi(0, "scalaCapitalWord", { fg = c.fg })
hi(0, "scalaTypeExtension", { fg = c.fg })
hi(0, "scalaKeyword", { fg = c.syn_keyword })
hi(0, "scalaKeywordModifier", { fg = c.syn_keyword })
hi(0, "scalaSpecial", { fg = c.syn_function })
hi(0, "scalaOperator", { fg = c.fg })
hi(0, "scalaTypeDeclaration", { fg = c.syn_title })
hi(0, "scalaTypeTypePostDeclaration", { fg = c.syn_title })
hi(0, "scalaInstanceDeclaration", { fg = c.fg })
hi(0, "scalaInterpolation", { fg = c.syn_function })
hi(0, "markdownItalic", { fg = c.fg_line_nr, italic = true })
hi(0, "markdownBold", { fg = c.fg_line_nr, bold = true })
hi(0, "markdownBoldItalic", { fg = c.fg_line_nr, bold = true, italic = true })
hi(0, "markdownH1", { fg = c.syn_constructor })
hi(0, "markdownH2", { fg = c.syn_constructor })
hi(0, "markdownH3", { fg = c.syn_title })
hi(0, "markdownH4", { fg = c.syn_title })
hi(0, "markdownH5", { fg = c.syn_title })
hi(0, "markdownH6", { fg = c.syn_title })
hi(0, "markdownCode", { fg = c.syn_function })
hi(0, "markdownCodeBlock", { fg = c.syn_function })
hi(0, "markdownCodeDelimiter", { fg = c.syn_function })
hi(0, "markdownBlockquote", { fg = c.syn_comment })
hi(0, "markdownListMarker", { fg = c.syn_comment })
hi(0, "markdownOrderedListMarker", { fg = c.syn_comment })
hi(0, "markdownRule", { fg = c.syn_comment })
hi(0, "markdownHeadingRule", { fg = c.syn_comment })
hi(0, "markdownUrlDelimiter", { fg = c.fg_muted })
hi(0, "markdownLinkDelimiter", { fg = c.fg_muted })
hi(0, "markdownLinkTextDelimiter", { fg = c.fg_muted })
hi(0, "markdownHeadingDelimiter", { fg = c.syn_label })
hi(0, "markdownUrl", { fg = c.syn_constant })
hi(0, "markdownUrlTitleDelimiter", { fg = c.syn_constructor })
hi(0, "markdownLinkText", { fg = c.syn_comment, underline = true })
hi(0, "markdownIdDeclaration", { fg = c.syn_comment, underline = true })
hi(0, "haskellType", { fg = c.syn_type })
hi(0, "haskellIdentifier", { fg = c.syn_function })
hi(0, "haskellSeparator", { fg = c.fg_line_nr })
hi(0, "haskellDelimiter", { fg = c.syn_label })
hi(0, "haskellOperators", { fg = c.syn_constant })
hi(0, "haskellBacktick", { fg = c.syn_label })
hi(0, "haskellStatement", { fg = c.syn_constant })
hi(0, "haskellConditional", { fg = c.syn_constant })
hi(0, "haskellLet", { fg = c.syn_keyword })
hi(0, "haskellDefault", { fg = c.syn_keyword })
hi(0, "haskellWhere", { fg = c.syn_keyword })
hi(0, "haskellBottom", { fg = c.syn_keyword })
hi(0, "haskellImportKeywords", { fg = c.syn_constant })
hi(0, "haskellDeclKeyword", { fg = c.syn_label })
hi(0, "haskellDecl", { fg = c.syn_label })
hi(0, "haskellDeriving", { fg = c.syn_constant })
hi(0, "haskellAssocType", { fg = c.syn_function })
hi(0, "haskellNumber", { fg = c.syn_function })
hi(0, "haskellPragma", { fg = c.syn_keyword })
hi(0, "haskellTH", { fg = c.syn_function })
hi(0, "haskellForeignKeywords", { fg = c.syn_constructor })
hi(0, "haskellKeyword", { fg = c.syn_keyword })
hi(0, "haskellFloat", { fg = c.syn_function })
hi(0, "haskellInfix", { fg = c.syn_constant })
hi(0, "haskellQuote", { fg = c.syn_constructor })
hi(0, "haskellShebang", { fg = c.syn_title })
hi(0, "haskellLiquid", { fg = c.syn_constant })
hi(0, "haskellQuasiQuoted", { fg = c.syn_type })
hi(0, "haskellRecursiveDo", { fg = c.syn_constant })
hi(0, "haskellQuotedType", { fg = c.syn_keyword })
hi(0, "haskellPreProc", { fg = c.fg_line_nr })
hi(0, "haskellTypeRoles", { fg = c.syn_keyword })
hi(0, "haskellTypeForall", { fg = c.syn_keyword })
hi(0, "haskellPatternKeyword", { fg = c.syn_type })
hi(0, "jsonKeyword", { fg = c.syn_constructor })
hi(0, "jsonQuote", { fg = c.syn_constructor })
hi(0, "jsonBraces", { fg = c.fg_muted })
hi(0, "jsonString", { fg = c.syn_string })
hi(0, "mailQuoted1", { fg = c.syn_function })
hi(0, "mailQuoted2", { fg = c.syn_constant })
hi(0, "mailQuoted3", { fg = c.syn_title })
hi(0, "mailQuoted4", { fg = c.syn_constructor })
hi(0, "mailQuoted5", { fg = c.syn_keyword })
hi(0, "mailQuoted6", { fg = c.syn_label })
hi(0, "mailSignature", { fg = c.syn_comment })
hi(0, "csBraces", { fg = c.fg_muted })
hi(0, "csEndColon", { fg = c.fg })
hi(0, "csLogicSymbols", { fg = c.fg })
hi(0, "csParens", { fg = c.fg_muted })
hi(0, "csOpSymbols", { fg = c.fg_muted })
hi(0, "csInterpolationDelimiter", { fg = c.fg_muted })
hi(0, "csInterpolationAlignDel", { fg = c.syn_function })
hi(0, "csInterpolationFormat", { fg = c.syn_function })
hi(0, "csInterpolationFormatDel", { fg = c.syn_function })
hi(0, "rustSigil", { fg = c.syn_keyword })
hi(0, "rustEscape", { fg = c.syn_string_special })
hi(0, "rustEnum", { fg = c.syn_keyword })
hi(0, "rustStructure", { fg = c.syn_keyword })
hi(0, "rustModPathSep", { fg = c.fg_muted })
hi(0, "rustCommentLineDoc", { fg = c.syn_documentation })
hi(0, "ocamlOperator", { fg = c.fg })
hi(0, "ocamlKeyChar", { fg = c.syn_label })
hi(0, "ocamlArrow", { fg = c.syn_label })
hi(0, "ocamlInfixOpKeyword", { fg = c.syn_keyword })
hi(0, "ocamlConstructor", { fg = c.syn_label })

-- ================================================
-- LSP diagnostics
-- ================================================
hi(0, "DiagnosticError", { fg = c.error })
hi(0, "DiagnosticWarn", { fg = c.warning })
hi(0, "DiagnosticInfo", { fg = c.info })
hi(0, "DiagnosticHint", { fg = c.hint })
hi(0, "DiagnosticVirtualTextError", { fg = c.error, bg = c.bg })
hi(0, "DiagnosticVirtualTextWarn", { fg = c.warning, bg = c.bg })
hi(0, "DiagnosticVirtualTextInfo", { fg = c.info, bg = c.bg })
hi(0, "DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg })
hi(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
hi(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi(0, "DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })
hi(0, "DiagnosticSignError", { fg = c.error })
hi(0, "DiagnosticSignWarn", { fg = c.warning })
hi(0, "DiagnosticSignInfo", { fg = c.info })
hi(0, "DiagnosticSignHint", { fg = c.hint })

-- ================================================
-- Git signs / diff
-- ================================================
hi(0, "DiffAdd", { fg = c.created, bg = "#0d1f0d" })
hi(0, "DiffDelete", { fg = c.deleted, bg = "#1f0d0d" })
hi(0, "DiffChange", { fg = c.modified, bg = "#0d1422" })
hi(0, "DiffText", { fg = c.fg, bg = "#1a2d47", bold = true })
hi(0, "GitSignsAdd", { fg = c.created })
hi(0, "GitSignsChange", { fg = c.modified })
hi(0, "GitSignsDelete", { fg = c.deleted })

-- ================================================
-- Telescope
-- ================================================
hi(0, "TelescopeNormal", { fg = c.fg, bg = c.bg_elevated })
hi(0, "TelescopeBorder", { fg = c.border, bg = c.bg_elevated })
hi(0, "TelescopePromptNormal", { fg = c.fg, bg = c.bg_subheader })
hi(0, "TelescopePromptBorder", { fg = c.border_focused, bg = c.bg_subheader })
hi(0, "TelescopePromptTitle", { fg = c.bg, bg = c.border_focused, bold = true })
hi(0, "TelescopeResultsTitle", { fg = c.fg_comment })
hi(0, "TelescopePreviewTitle", { fg = c.fg_comment })
hi(0, "TelescopeSelection", { bg = c.bg_active_line })
hi(0, "TelescopeMatching", { fg = c.fg_accent, bold = true })

-- ================================================
-- nvim-cmp
-- ================================================
hi(0, "CmpItemMenu", { fg = c.fg_comment })
hi(0, "CmpItemAbbr", { fg = c.fg_muted })
hi(0, "CmpItemAbbrMatch", { fg = c.fg_accent, bold = true })
hi(0, "CmpItemAbbrMatchFuzzy", { fg = c.fg_accent })
hi(0, "CmpItemKindText", { fg = c.fg_muted })
hi(0, "CmpItemKindFunction", { fg = c.syn_function })
hi(0, "CmpItemKindMethod", { fg = c.syn_function })
hi(0, "CmpItemKindKeyword", { fg = c.syn_keyword })
hi(0, "CmpItemKindVariable", { fg = c.syn_variable })
hi(0, "CmpItemKindConstant", { fg = c.syn_constant })
hi(0, "CmpItemKindClass", { fg = c.syn_type })
hi(0, "CmpItemKindInterface", { fg = c.syn_type })
hi(0, "CmpItemKindStruct", { fg = c.syn_type })
hi(0, "CmpItemKindEnum", { fg = c.syn_type })
hi(0, "CmpItemKindEnumMember", { fg = c.syn_constant })
hi(0, "CmpItemKindModule", { fg = c.syn_type })
hi(0, "CmpItemKindField", { fg = c.syn_variable })
hi(0, "CmpItemKindProperty", { fg = c.syn_variable })
hi(0, "CmpItemKindSnippet", { fg = c.syn_string_special })
hi(0, "CmpItemKindColor", { fg = c.syn_label })
hi(0, "CmpItemKindFile", { fg = c.fg_muted })
hi(0, "CmpItemKindFolder", { fg = c.fg_accent })
hi(0, "CmpItemKindUnit", { fg = c.syn_number })
hi(0, "CmpItemKindValue", { fg = c.syn_string })
hi(0, "CmpItemKindReference", { fg = c.syn_label })
hi(0, "CmpItemKindEvent", { fg = c.syn_label })
hi(0, "CmpItemKindOperator", { fg = c.fg })
hi(0, "CmpItemKindTypeParameter", { fg = c.syn_type })

-- ================================================
-- indent-blankline
-- ================================================
hi(0, "IblIndent", { fg = c.indent_guide })
hi(0, "IblScope", { fg = c.indent_guide_active })

-- ================================================
-- Neotree / nvim-tree
-- ================================================
hi(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg_surface })
hi(0, "NeoTreeNormalNC", { fg = c.fg, bg = c.bg_surface })
hi(0, "NeoTreeWinSeparator", { fg = c.border, bg = c.bg_surface })
hi(0, "NeoTreeGitAdded", { fg = c.created })
hi(0, "NeoTreeGitModified", { fg = c.modified })
hi(0, "NeoTreeGitDeleted", { fg = c.deleted })
hi(0, "NeoTreeGitConflict", { fg = c.conflict })
hi(0, "NeoTreeGitIgnored", { fg = c.ignored })
hi(0, "NeoTreeDimText", { fg = c.fg_comment })
hi(0, "NvimTreeNormal", { fg = c.fg, bg = c.bg_surface })
hi(0, "NvimTreeGitNew", { fg = c.created })
hi(0, "NvimTreeGitDirty", { fg = c.modified })
hi(0, "NvimTreeGitDeleted", { fg = c.deleted })

-- ================================================
-- lualine (basic overrides; configure separately)
-- ================================================
hi(0, "lualine_a_normal", { fg = c.bg, bg = c.fg_accent, bold = true })
hi(0, "lualine_b_normal", { fg = c.fg_muted, bg = c.bg_element })
hi(0, "lualine_c_normal", { fg = c.fg_muted, bg = c.bg_surface })

-- ================================================
-- which-key
-- ================================================
hi(0, "WhichKey", { fg = c.fg_accent })
hi(0, "WhichKeyGroup", { fg = c.syn_title })
hi(0, "WhichKeyDesc", { fg = c.fg })
hi(0, "WhichKeySeparator", { fg = c.fg_comment })
hi(0, "WhichKeyFloat", { bg = c.bg_elevated })

-- ================================================
-- Notify
-- ================================================
hi(0, "NotifyERRORTitle", { fg = c.error })
hi(0, "NotifyWARNTitle", { fg = c.warning })
hi(0, "NotifyINFOTitle", { fg = c.info })
hi(0, "NotifyDEBUGTitle", { fg = c.hint })
hi(0, "NotifyERRORBody", { fg = c.fg })
hi(0, "NotifyWARNBody", { fg = c.fg })
hi(0, "NotifyINFOBody", { fg = c.fg })

-- ================================================
-- Terminal colors (for :terminal)
-- ================================================
vim.g.terminal_color_0  = c.ansi_black
vim.g.terminal_color_1  = c.ansi_red
vim.g.terminal_color_2  = c.ansi_green
vim.g.terminal_color_3  = c.ansi_yellow
vim.g.terminal_color_4  = c.ansi_blue
vim.g.terminal_color_5  = c.ansi_magenta
vim.g.terminal_color_6  = c.ansi_cyan
vim.g.terminal_color_7  = c.ansi_white
vim.g.terminal_color_8  = c.ansi_bright_black
vim.g.terminal_color_9  = c.ansi_bright_red
vim.g.terminal_color_10 = c.ansi_bright_green
vim.g.terminal_color_11 = c.ansi_bright_yellow
vim.g.terminal_color_12 = c.ansi_bright_blue
vim.g.terminal_color_13 = c.ansi_bright_magenta
vim.g.terminal_color_14 = c.ansi_bright_cyan
vim.g.terminal_color_15 = c.ansi_bright_white
