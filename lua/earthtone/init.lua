local M = {}

local c = require("earthtone.palette")

local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "earthtone"
	vim.o.termguicolors = true
	vim.o.background = "light"

	---------------------------------------------------------------------------
	-- Terminal
	---------------------------------------------------------------------------
	vim.g.terminal_color_0 = c.dark_grey
	vim.g.terminal_color_1 = c.brick
	vim.g.terminal_color_2 = c.olive
	vim.g.terminal_color_3 = c.honey
	vim.g.terminal_color_4 = c.storm_blue
	vim.g.terminal_color_5 = c.dusty_purple
	vim.g.terminal_color_6 = c.aqua
	vim.g.terminal_color_7 = c.pale_stone
	vim.g.terminal_color_8 = c.stone_grey
	vim.g.terminal_color_9 = c.coral
	vim.g.terminal_color_10 = c.olive
	vim.g.terminal_color_11 = c.warm_orange
	vim.g.terminal_color_12 = c.storm_blue
	vim.g.terminal_color_13 = c.dusty_purple
	vim.g.terminal_color_14 = c.aqua
	vim.g.terminal_color_15 = c.bg_dim

	---------------------------------------------------------------------------
	-- Editor UI
	---------------------------------------------------------------------------
	hi("Normal", { fg = c.fg, bg = c.bg })
	hi("NormalNC", { fg = c.fg, bg = c.bg })
	hi("NormalFloat", { fg = c.fg, bg = c.bg_float })
	hi("FloatBorder", { fg = c.stone_grey, bg = c.bg_float })
	hi("FloatTitle", { fg = c.terracotta, bg = c.bg_float, bold = true })

	hi("Cursor", { fg = c.bg, bg = c.fg })
	hi("lCursor", { link = "Cursor" })
	hi("CursorIM", { link = "Cursor" })
	hi("TermCursor", { fg = c.bg, bg = c.fg })
	hi("TermCursorNC", { fg = c.bg, bg = c.stone_grey })

	hi("CursorLine", { bg = c.bg_cursor })
	hi("CursorColumn", { bg = c.bg_cursor })
	hi("CursorLineNr", { fg = c.dark_grey, bg = c.bg_cursor, bold = true })
	hi("CursorLineFold", { bg = c.bg_cursor })
	hi("CursorLineSign", { bg = c.bg_cursor })
	hi("ColorColumn", { bg = c.bg_visual })

	hi("LineNr", { fg = c.pale_stone })
	hi("SignColumn", { fg = c.fg, bg = "NONE" })
	hi("FoldColumn", { fg = c.stone_grey, bg = "NONE" })
	hi("Folded", { fg = c.stone_grey, bg = c.bg_dim })

	hi("Conceal", { fg = c.stone_grey })
	hi("NonText", { fg = c.pale_stone })
	hi("SpecialKey", { fg = c.pale_stone })
	hi("Whitespace", { fg = c.pale_stone })
	hi("EndOfBuffer", { fg = c.bg })

	hi("Visual", { bg = c.bg_visual })
	hi("VisualNOS", { bg = c.bg_visual })
	hi("Search", { fg = c.fg, bg = c.bg_search })
	hi("IncSearch", { fg = c.bg, bg = c.warm_orange })
	hi("CurSearch", { fg = c.bg, bg = c.warm_amber })
	hi("Substitute", { fg = c.bg, bg = c.coral })

	hi("MatchParen", { fg = c.warm_orange, bg = c.bg_visual, bold = true })

	hi("Pmenu", { fg = c.fg, bg = c.bg_float })
	hi("PmenuSel", { fg = c.fg, bg = c.bg_visual })
	hi("PmenuSbar", { bg = c.bg_dim })
	hi("PmenuThumb", { bg = c.pale_stone })
	hi("PmenuKind", { fg = c.terracotta, bg = c.bg_float })
	hi("PmenuKindSel", { fg = c.terracotta, bg = c.bg_visual })
	hi("PmenuExtra", { fg = c.stone_grey, bg = c.bg_float })
	hi("PmenuExtraSel", { fg = c.stone_grey, bg = c.bg_visual })

	hi("StatusLine", { fg = c.dark_grey, bg = c.bg_dim })
	hi("StatusLineNC", { fg = c.stone_grey, bg = c.bg_dim })
	hi("WinBar", { fg = c.dark_grey, bg = "NONE", bold = true })
	hi("WinBarNC", { fg = c.stone_grey, bg = "NONE" })
	hi("WinSeparator", { fg = c.pale_stone, bg = "NONE" })

	hi("TabLine", { fg = c.stone_grey, bg = c.bg_dim })
	hi("TabLineFill", { bg = c.bg_dim })
	hi("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })

	hi("Title", { fg = c.terracotta, bold = true })
	hi("Directory", { fg = c.sage_green })
	hi("WildMenu", { fg = c.bg, bg = c.warm_amber })

	hi("ErrorMsg", { fg = c.coral, bold = true })
	hi("WarningMsg", { fg = c.honey, bold = true })
	hi("ModeMsg", { fg = c.fg, bold = true })
	hi("MoreMsg", { fg = c.sage, bold = true })
	hi("Question", { fg = c.sage, bold = true })

	---------------------------------------------------------------------------
	-- Diff
	---------------------------------------------------------------------------
	hi("DiffAdd", { bg = c.bg_green })
	hi("DiffChange", { bg = c.bg_blue })
	hi("DiffDelete", { fg = c.brick, bg = c.bg_red })
	hi("DiffText", { fg = c.fg, bg = c.bg_diff_text })
	hi("Added", { fg = c.olive })
	hi("Changed", { fg = c.storm_blue })
	hi("Removed", { fg = c.brick })

	---------------------------------------------------------------------------
	-- Spell
	---------------------------------------------------------------------------
	hi("SpellBad", { undercurl = true, sp = c.coral })
	hi("SpellCap", { undercurl = true, sp = c.honey })
	hi("SpellLocal", { undercurl = true, sp = c.aqua })
	hi("SpellRare", { undercurl = true, sp = c.dusty_purple })

	---------------------------------------------------------------------------
	-- Standard syntax
	---------------------------------------------------------------------------
	hi("Comment", { fg = c.comment, italic = true })
	hi("String", { fg = c.moss })
	hi("Character", { fg = c.warm_orange })
	hi("Number", { fg = c.warm_amber })
	hi("Boolean", { fg = c.earth_brown })
	hi("Float", { fg = c.warm_amber })

	hi("Constant", { fg = c.earth_brown })
	hi("Identifier", { fg = c.deep_forest })
	hi("Function", { fg = c.blue_stone })

	hi("Statement", { fg = c.terracotta })
	hi("Conditional", { fg = c.terracotta })
	hi("Repeat", { fg = c.terracotta })
	hi("Label", { fg = c.warm_orange })
	hi("Operator", { fg = c.charcoal })
	hi("Keyword", { fg = c.terracotta })
	hi("Exception", { fg = c.coral })

	hi("PreProc", { fg = c.dusty_purple })
	hi("Include", { fg = c.dusty_purple })
	hi("Define", { fg = c.dusty_purple })
	hi("Macro", { fg = c.dusty_purple })
	hi("PreCondit", { fg = c.dusty_purple })

	hi("Type", { fg = c.sage_green })
	hi("StorageClass", { fg = c.warm_orange })
	hi("Structure", { fg = c.sage_green })
	hi("Typedef", { fg = c.sage_green })

	hi("Special", { fg = c.warm_orange })
	hi("SpecialChar", { fg = c.warm_orange })
	hi("Tag", { fg = c.terracotta })
	hi("Delimiter", { fg = c.stone_grey })
	hi("SpecialComment", { fg = c.stone_grey, italic = true })
	hi("Debug", { fg = c.warm_orange })

	hi("Underlined", { fg = c.storm_blue, underline = true })
	hi("Bold", { bold = true })
	hi("Italic", { italic = true })
	hi("Error", { fg = c.coral, bold = true })
	hi("Todo", { fg = c.sage, bold = true })

	-- Named color groups (used by some plugins/themes)
	hi("Red", { fg = c.red })
	hi("Orange", { fg = c.orange })
	hi("Purple", { fg = c.purple })
	hi("PurpleItalic", { fg = c.dusty_purple })

	---------------------------------------------------------------------------
	-- Treesitter
	---------------------------------------------------------------------------
	-- Identifiers
	hi("@variable", { fg = c.deep_forest })
	hi("@variable.builtin", { fg = c.driftwood })
	hi("@variable.parameter", { fg = c.clay })
	hi("@variable.member", { fg = c.deep_forest })

	hi("@constant", { fg = c.earth_brown })
	hi("@constant.builtin", { fg = c.earth_brown })
	hi("@constant.macro", { fg = c.dusty_purple })

	hi("@module", { fg = c.sage_green })
	hi("@module.builtin", { fg = c.sage_green })
	hi("@label", { fg = c.warm_orange })

	-- Literals
	hi("@string", { fg = c.moss })
	hi("@string.documentation", { fg = c.comment, italic = true })
	hi("@string.escape", { fg = c.warm_orange })
	hi("@string.regexp", { fg = c.warm_orange })
	hi("@string.special", { fg = c.warm_orange })
	hi("@string.special.symbol", { fg = c.earth_brown })
	hi("@string.special.url", { fg = c.storm_blue, underline = true })
	hi("@string.special.path", { fg = c.storm_blue })

	hi("@character", { fg = c.warm_orange })
	hi("@character.special", { fg = c.warm_orange })
	hi("@boolean", { fg = c.earth_brown })
	hi("@number", { fg = c.warm_amber })
	hi("@number.float", { fg = c.petal })

	-- Types
	hi("@type", { fg = c.sage_green })
	hi("@type.builtin", { fg = c.sage_green })
	hi("@type.definition", { fg = c.sage_green })
	hi("@type.qualifier", { fg = c.terracotta })

	hi("@attribute", { fg = c.dusty_purple })
	hi("@attribute.builtin", { fg = c.dusty_purple })
	hi("@property", { fg = c.deep_forest })

	-- Functions
	hi("@function", { fg = c.blue_stone })
	hi("@function.builtin", { fg = c.bark })
	hi("@function.call", { fg = c.blue_stone })
	hi("@function.macro", { fg = c.dusty_purple })
	hi("@function.method", { fg = c.blue_stone })
	hi("@function.method.call", { fg = c.blue_stone })
	hi("@constructor", { fg = c.sage_green })

	-- Keywords
	hi("@keyword", { fg = c.terracotta })
	hi("@keyword.coroutine", { fg = c.terracotta })
	hi("@keyword.function", { fg = c.terracotta })
	hi("@keyword.operator", { fg = c.terracotta })
	hi("@keyword.import", { fg = c.dusty_purple })
	hi("@keyword.type", { fg = c.terracotta })
	hi("@keyword.modifier", { fg = c.terracotta })
	hi("@keyword.repeat", { fg = c.terracotta })
	hi("@keyword.return", { fg = c.terracotta })
	hi("@keyword.debug", { fg = c.warm_orange })
	hi("@keyword.exception", { fg = c.coral })
	hi("@keyword.conditional", { fg = c.terracotta })
	hi("@keyword.conditional.ternary", { fg = c.charcoal })
	hi("@keyword.directive", { fg = c.dusty_purple })
	hi("@keyword.directive.define", { fg = c.dusty_purple })
	hi("@keyword.storage", { fg = c.terracotta })

	-- Operators & punctuation
	hi("@operator", { fg = c.charcoal })
	hi("@punctuation", { fg = c.stone_grey })
	hi("@punctuation.bracket", { fg = c.stone_grey })
	hi("@punctuation.delimiter", { fg = c.lichen })
	hi("@punctuation.special", { fg = c.twig })

	-- Comments
	hi("@comment", { fg = c.comment, italic = true })
	hi("@comment.documentation", { fg = c.comment, italic = true })
	hi("@comment.error", { fg = c.coral, bold = true })
	hi("@comment.warning", { fg = c.honey, bold = true })
	hi("@comment.todo", { fg = c.sage, bold = true })
	hi("@comment.note", { fg = c.storm_blue, bold = true })

	-- Markup
	hi("@markup.strong", { bold = true })
	hi("@markup.italic", { italic = true })
	hi("@markup.strikethrough", { strikethrough = true })
	hi("@markup.underline", { underline = true })
	hi("@markup.heading", { fg = c.terracotta, bold = true })
	hi("@markup.heading.1", { fg = c.terracotta, bold = true })
	hi("@markup.heading.2", { fg = c.warm_amber, bold = true })
	hi("@markup.heading.3", { fg = c.sage_green, bold = true })
	hi("@markup.heading.4", { fg = c.storm_blue, bold = true })
	hi("@markup.heading.5", { fg = c.dusty_purple, bold = true })
	hi("@markup.heading.6", { fg = c.stone_grey, bold = true })
	hi("@markup.quote", { fg = c.stone_grey, italic = true })
	hi("@markup.math", { fg = c.warm_amber })
	hi("@markup.link", { fg = c.storm_blue, underline = true })
	hi("@markup.link.label", { fg = c.storm_blue })
	hi("@markup.link.url", { fg = c.storm_blue, underline = true })
	hi("@markup.raw", { fg = c.earth_brown })
	hi("@markup.raw.block", { fg = c.fg })
	hi("@markup.list", { fg = c.terracotta })
	hi("@markup.list.checked", { fg = c.olive, bold = true })
	hi("@markup.list.unchecked", { fg = c.sage, bold = true })

	-- Tags (HTML/JSX)
	hi("@tag", { fg = c.terracotta })
	hi("@tag.attribute", { fg = c.sage_green })
	hi("@tag.delimiter", { fg = c.stone_grey })
	hi("@tag.builtin", { fg = c.terracotta })

	-- Diff
	hi("@diff.plus", { fg = c.olive })
	hi("@diff.minus", { fg = c.brick })
	hi("@diff.delta", { fg = c.storm_blue })

	-- @text aliases (older treesitter)
	hi("@text.todo", { fg = c.sage, bold = true })
	hi("@text.note", { fg = c.storm_blue, bold = true })
	hi("@text.warning", { fg = c.honey, bold = true })
	hi("@text.danger", { fg = c.coral, bold = true })
	hi("@text.todo.unchecked", { fg = c.sage, bold = true })
	hi("@text.todo.checked", { fg = c.olive, bold = true })

	---------------------------------------------------------------------------
	-- LSP semantic tokens
	---------------------------------------------------------------------------
	hi("@lsp.type.class", { link = "@type" })
	hi("@lsp.type.comment", { link = "@comment" })
	hi("@lsp.type.decorator", { link = "@attribute" })
	hi("@lsp.type.enum", { link = "@type" })
	hi("@lsp.type.enumMember", { link = "@constant" })
	hi("@lsp.type.event", { link = "@type" })
	hi("@lsp.type.function", { link = "@function" })
	hi("@lsp.type.interface", { link = "@type" })
	hi("@lsp.type.keyword", { link = "@keyword" })
	hi("@lsp.type.macro", { link = "@function.macro" })
	hi("@lsp.type.method", { link = "@function.method" })
	hi("@lsp.type.modifier", { link = "@keyword.modifier" })
	hi("@lsp.type.namespace", { link = "@module" })
	hi("@lsp.type.number", { link = "@number" })
	hi("@lsp.type.operator", { link = "@operator" })
	hi("@lsp.type.parameter", { link = "@variable.parameter" })
	hi("@lsp.type.property", { link = "@property" })
	hi("@lsp.type.regexp", { link = "@string.regexp" })
	hi("@lsp.type.string", { link = "@string" })
	hi("@lsp.type.struct", { link = "@type" })
	hi("@lsp.type.type", { link = "@type" })
	hi("@lsp.type.typeParameter", { link = "@type.definition" })
	hi("@lsp.type.variable", { link = "@variable" })

	hi("@lsp.mod.deprecated", { strikethrough = true })
	hi("@lsp.mod.readonly", { italic = true })
	hi("@lsp.mod.defaultLibrary", { link = "@variable.builtin" })

	---------------------------------------------------------------------------
	-- LSP
	---------------------------------------------------------------------------
	hi("LspReferenceText", { bg = c.bg_reference })
	hi("LspReferenceRead", { bg = c.bg_reference })
	hi("LspReferenceWrite", { bg = c.bg_reference_write, bold = true })
	hi("LspSignatureActiveParameter", { underline = true, sp = c.terracotta })
	hi("LspInlayHint", { fg = c.light_pebble, bg = c.bg_dim })
	hi("LspCodeLens", { fg = c.light_pebble })
	hi("LspCodeLensSeparator", { fg = c.pale_stone })
	hi("LspInfoBorder", { link = "FloatBorder" })

	---------------------------------------------------------------------------
	-- Diagnostics
	---------------------------------------------------------------------------
	hi("DiagnosticError", { fg = c.coral })
	hi("DiagnosticWarn", { fg = c.honey })
	hi("DiagnosticInfo", { fg = c.sage })
	hi("DiagnosticHint", { fg = c.storm_blue })
	hi("DiagnosticOk", { fg = c.olive })

	hi("DiagnosticUnderlineError", { undercurl = true, sp = c.coral })
	hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.honey })
	hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.sage })
	hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.storm_blue })

	hi("DiagnosticVirtualTextError", { fg = c.coral, bg = c.bg_red })
	hi("DiagnosticVirtualTextWarn", { fg = c.honey, bg = c.bg_yellow })
	hi("DiagnosticVirtualTextInfo", { fg = c.sage, bg = c.bg_green })
	hi("DiagnosticVirtualTextHint", { fg = c.storm_blue, bg = c.bg_blue })

	hi("DiagnosticFloatingError", { fg = c.coral })
	hi("DiagnosticFloatingWarn", { fg = c.honey })
	hi("DiagnosticFloatingInfo", { fg = c.sage })
	hi("DiagnosticFloatingHint", { fg = c.storm_blue })

	hi("DiagnosticSignError", { fg = c.coral })
	hi("DiagnosticSignWarn", { fg = c.honey })
	hi("DiagnosticSignInfo", { fg = c.sage })
	hi("DiagnosticSignHint", { fg = c.storm_blue })

	hi("ErrorFloat", { fg = c.rust_conditional })

	---------------------------------------------------------------------------
	-- Git signs
	---------------------------------------------------------------------------
	hi("GitSignsAdd", { fg = c.olive })
	hi("GitSignsChange", { fg = c.honey })
	hi("GitSignsDelete", { fg = c.brick })
	hi("GitSignsAddNr", { fg = c.olive })
	hi("GitSignsChangeNr", { fg = c.honey })
	hi("GitSignsDeleteNr", { fg = c.brick })
	hi("GitSignsAddLn", { bg = c.bg_green })
	hi("GitSignsChangeLn", { bg = c.bg_blue })
	hi("GitSignsDeleteLn", { bg = c.bg_red })

	---------------------------------------------------------------------------
	-- Todo comments
	---------------------------------------------------------------------------
	hi("TodoBgTODO", { bg = c.sage, fg = c.bg_dim, bold = true })
	hi("TodoFgTODO", { fg = c.sage, bold = true })
	hi("TodoSignTODO", { fg = c.sage, bold = true })

	hi("TodoBgFIX", { bg = c.coral, fg = c.bg_dim, bold = true })
	hi("TodoFgFIX", { fg = c.coral, bold = true })
	hi("TodoSignFIX", { fg = c.coral, bold = true })

	hi("TodoBgHACK", { bg = c.honey, fg = c.bg_dim, bold = true })
	hi("TodoFgHACK", { fg = c.honey, bold = true })
	hi("TodoSignHACK", { fg = c.honey, bold = true })

	hi("TodoBgWARN", { bg = c.honey, fg = c.bg_dim, bold = true })
	hi("TodoFgWARN", { fg = c.honey, bold = true })
	hi("TodoSignWARN", { fg = c.honey, bold = true })

	hi("TodoBgPERF", { bg = c.dusty_purple, fg = c.bg_dim, bold = true })
	hi("TodoFgPERF", { fg = c.dusty_purple, bold = true })
	hi("TodoSignPERF", { fg = c.dusty_purple, bold = true })

	hi("TodoBgNOTE", { bg = c.storm_blue, fg = c.bg_dim, bold = true })
	hi("TodoFgNOTE", { fg = c.storm_blue, bold = true })
	hi("TodoSignNOTE", { fg = c.storm_blue, bold = true })

	hi("TodoBgTEST", { bg = c.dusty_purple, fg = c.bg_dim, bold = true })
	hi("TodoFgTEST", { fg = c.dusty_purple, bold = true })
	hi("TodoSignTEST", { fg = c.dusty_purple, bold = true })

	---------------------------------------------------------------------------
	-- Yanky
	---------------------------------------------------------------------------
	hi("YankyPut", { bg = c.terracotta, fg = c.bg_dim })
	hi("YankyYanked", { bg = c.terracotta, fg = c.bg_dim })

	---------------------------------------------------------------------------
	-- Blink pairs
	---------------------------------------------------------------------------
	hi("BlinkPairsWarm1", { fg = c.warm_orange })
	hi("BlinkPairsWarm2", { fg = c.river_stone })

	---------------------------------------------------------------------------
	-- Rust overrides
	---------------------------------------------------------------------------
	hi("@keyword.rust", { fg = c.rust_keyword })
	hi("@keyword.conditional.rust", { fg = c.rust_conditional })
	hi("@keyword.modifier.rust", { fg = c.rust_modifier })
	hi("@keyword.function.rust", { fg = c.rust_wood })
	hi("@keyword.storage.rust", { fg = c.rust_storage })
	hi("@keyword.import.rust", { fg = c.rust_import })
	hi("@type.rust", { fg = c.rust_type })
	hi("@function.rust", { fg = c.rust_function })
	hi("@function.method.call.rust", { fg = c.rust_call })
	hi("@attribute.rust", { fg = c.dusty_purple })
	hi("@operator.rust", { fg = c.rust_operator })
	hi("@label.rust", { fg = c.dusty_purple })
	hi("@constant.builtin.rust", { fg = c.rust_constant })
	hi("@number.float.rust", { fg = c.rust_float })

	hi("@lsp.typemod.keyword.controlFlow.rust", { fg = c.rust_control_flow })
	hi("@lsp.type.method.rust", { fg = c.rust_method })
	hi("@lsp.mod.constant.rust", { fg = c.rust_storage })

	---------------------------------------------------------------------------
	-- NeoTree
	---------------------------------------------------------------------------
	hi("NeoTreeNormal", { fg = c.fg, bg = c.bg_dim })
	hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg_dim })
	hi("NeoTreeEndOfBuffer", { fg = c.bg_dim, bg = c.bg_dim })
	hi("NeoTreeWinSeparator", { fg = c.bg_dim, bg = c.bg_dim })
	hi("NeoTreeCursorLine", { bg = c.bg_visual })
	hi("NeoTreeDirectoryName", { fg = c.sage_green })
	hi("NeoTreeDirectoryIcon", { fg = c.sage })
	hi("NeoTreeFileName", { fg = c.fg })
	hi("NeoTreeFileIcon", { fg = c.stone_grey })
	hi("NeoTreeRootName", { fg = c.terracotta, bold = true })
	hi("NeoTreeGitAdded", { fg = c.olive })
	hi("NeoTreeGitModified", { fg = c.honey })
	hi("NeoTreeGitDeleted", { fg = c.brick })
	hi("NeoTreeGitConflict", { fg = c.coral, bold = true })
	hi("NeoTreeGitUntracked", { fg = c.dusty_purple })
	hi("NeoTreeIndentMarker", { fg = c.pale_stone })

	---------------------------------------------------------------------------
	-- WhichKey
	---------------------------------------------------------------------------
	hi("WhichKey", { fg = c.terracotta })
	hi("WhichKeyGroup", { fg = c.storm_blue })
	hi("WhichKeySeparator", { fg = c.stone_grey })
	hi("WhichKeyDesc", { fg = c.fg })
	hi("WhichKeyFloat", { bg = c.bg_float })
	hi("WhichKeyBorder", { fg = c.stone_grey, bg = c.bg_float })
	hi("WhichKeyValue", { fg = c.stone_grey })

	---------------------------------------------------------------------------
	-- Lazy.nvim
	---------------------------------------------------------------------------
	hi("LazyH1", { fg = c.bg, bg = c.terracotta, bold = true })
	hi("LazyButton", { fg = c.fg, bg = c.bg_dim })
	hi("LazyButtonActive", { fg = c.bg, bg = c.sage, bold = true })
	hi("LazySpecial", { fg = c.warm_amber })
	hi("LazyReasonPlugin", { fg = c.storm_blue })
	hi("LazyReasonEvent", { fg = c.honey })
	hi("LazyReasonKeys", { fg = c.dusty_purple })
	hi("LazyReasonCmd", { fg = c.olive })

	---------------------------------------------------------------------------
	-- Trouble
	---------------------------------------------------------------------------
	hi("TroubleNormal", { fg = c.fg, bg = c.bg_dim })
	hi("TroubleNormalNC", { fg = c.fg, bg = c.bg_dim })
	hi("TroubleCount", { fg = c.bg, bg = c.terracotta, bold = true })

	---------------------------------------------------------------------------
	-- Flash
	---------------------------------------------------------------------------
	hi("FlashMatch", { fg = c.fg, bg = c.bg_search })
	hi("FlashCurrent", { fg = c.bg, bg = c.warm_orange, bold = true })
	hi("FlashLabel", { fg = c.bg, bg = c.coral, bold = true })

	---------------------------------------------------------------------------
	-- Noice
	---------------------------------------------------------------------------
	hi("NoiceCmdlinePopup", { fg = c.fg, bg = c.bg_float })
	hi("NoiceCmdlinePopupBorder", { fg = c.stone_grey, bg = c.bg_float })
	hi("NoiceCmdlineIcon", { fg = c.terracotta })
	hi("NoiceMini", { fg = c.fg, bg = c.bg_dim })
end

return M
