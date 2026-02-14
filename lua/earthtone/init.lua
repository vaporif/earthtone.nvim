local M = {}

local c = require 'earthtone.palette'

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.g.colors_name = 'earthtone'
  vim.o.termguicolors = true
  vim.o.background = 'light'

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
  -- Editor UI (bg values match everforest bg1/bg2/bg3/bg4 mapping)
  ---------------------------------------------------------------------------
  hi('Normal', { fg = c.fg, bg = c.bg })
  hi('NormalNC', { fg = c.fg, bg = c.bg })
  hi('NormalFloat', { fg = c.fg, bg = c.bg2 })
  hi('FloatBorder', { fg = c.light_pebble, bg = c.bg2 })
  hi('FloatTitle', { fg = c.light_pebble, bg = c.bg2 })

  hi('Cursor', { fg = c.bg, bg = c.fg })
  hi('lCursor', { link = 'Cursor' })
  hi('CursorIM', { link = 'Cursor' })
  hi('TermCursor', { fg = c.bg, bg = c.fg })
  hi('TermCursorNC', { fg = c.bg, bg = c.stone_grey })

  hi('CursorLine', { bg = c.bg_cursor })
  hi('CursorColumn', { bg = c.bg1 })
  hi('CursorLineNr', { fg = c.pale_stone, bg = c.bg1 })
  hi('CursorLineFold', { bg = c.bg1 })
  hi('CursorLineSign', { bg = c.bg1 })
  hi('ColorColumn', { bg = c.bg1 })

  hi('LineNr', { fg = c.river_stone })
  hi('SignColumn', { fg = c.fg })
  hi('FoldColumn', { fg = c.pale_stone })
  hi('Folded', { fg = c.light_pebble, bg = c.bg1 })

  hi('Conceal', { fg = c.light_pebble })
  hi('NonText', { fg = c.bg4 })
  hi('SpecialKey', { fg = c.bg4 })
  hi('Whitespace', { fg = c.bg4 })
  hi('EndOfBuffer', { fg = c.bg })

  hi('Visual', { bg = c.bg_visual })
  hi('VisualNOS', { bg = c.bg_visual })
  hi('Search', { fg = c.bg, bg = c.olive, bold = true })
  hi('IncSearch', { fg = c.bg, bg = c.brick })
  hi('CurSearch', { fg = c.bg, bg = c.brick })
  hi('Substitute', { fg = c.bg, bg = c.honey })

  hi('MatchParen', { bg = c.bg4 })

  hi('Pmenu', { fg = c.fg, bg = c.bg2 })
  hi('PmenuSel', { fg = c.bg, bg = c.statusline1 })
  hi('PmenuSbar', { bg = c.bg2 })
  hi('PmenuThumb', { bg = c.river_stone })
  hi('PmenuKind', { fg = c.olive, bg = c.bg2 })
  hi('PmenuKindSel', { fg = c.bg, bg = c.statusline1 })
  hi('PmenuExtra', { fg = c.light_pebble, bg = c.bg2 })
  hi('PmenuExtraSel', { fg = c.bg, bg = c.statusline1 })

  hi('StatusLine', { fg = c.light_pebble, bg = c.bg2 })
  hi('StatusLineNC', { fg = c.light_pebble, bg = c.bg1 })
  hi('WinBar', { fg = c.light_pebble, bg = c.bg2, bold = true })
  hi('WinBarNC', { fg = c.light_pebble, bg = c.bg1 })
  hi('WinSeparator', { fg = c.bg4 })

  hi('TabLine', { fg = c.pale_stone, bg = c.bg3 })
  hi('TabLineFill', { bg = c.bg1 })
  hi('TabLineSel', { fg = c.bg, bg = c.statusline1, bold = true })

  hi('Title', { fg = c.warm_orange, bold = true })
  hi('Directory', { fg = c.olive })
  hi('WildMenu', { fg = c.bg, bg = c.statusline1 })

  hi('ErrorMsg', { fg = c.brick, bold = true })
  hi('WarningMsg', { fg = c.honey, bold = true })
  hi('ModeMsg', { fg = c.fg, bold = true })
  hi('MoreMsg', { fg = c.olive, bold = true })
  hi('Question', { fg = c.olive, bold = true })

  ---------------------------------------------------------------------------
  -- Diff
  ---------------------------------------------------------------------------
  hi('DiffAdd', { bg = c.bg_green })
  hi('DiffChange', { bg = c.bg_blue })
  hi('DiffDelete', { bg = c.bg_red })
  hi('DiffText', { fg = c.bg, bg = c.storm_blue })
  hi('Added', { fg = c.olive })
  hi('Changed', { fg = c.storm_blue })
  hi('Removed', { fg = c.brick })

  ---------------------------------------------------------------------------
  -- Spell
  ---------------------------------------------------------------------------
  hi('SpellBad', { undercurl = true, sp = c.brick })
  hi('SpellCap', { undercurl = true, sp = c.honey })
  hi('SpellLocal', { undercurl = true, sp = c.aqua })
  hi('SpellRare', { undercurl = true, sp = c.dusty_purple })

  ---------------------------------------------------------------------------
  -- Standard syntax (everforest defaults with user's colours_override palette)
  ---------------------------------------------------------------------------
  hi('Comment', { fg = c.comment, italic = true })
  hi('String', { fg = c.olive })
  hi('Character', { fg = c.olive })
  hi('Number', { fg = c.dusty_purple })
  hi('Boolean', { fg = c.dusty_purple })
  hi('Float', { fg = c.dusty_purple })

  hi('Constant', { fg = c.aqua })
  hi('Identifier', { fg = c.storm_blue })
  hi('Function', { fg = c.olive })

  hi('Statement', { fg = c.brick })
  hi('Conditional', { fg = c.brick })
  hi('Repeat', { fg = c.brick })
  hi('Label', { fg = c.warm_orange })
  hi('Operator', { fg = c.warm_orange })
  hi('Keyword', { fg = c.brick })
  hi('Exception', { fg = c.brick })

  hi('PreProc', { fg = c.dusty_purple })
  hi('Include', { fg = c.dusty_purple })
  hi('Define', { fg = c.dusty_purple })
  hi('Macro', { fg = c.aqua })
  hi('PreCondit', { fg = c.dusty_purple })

  hi('Type', { fg = c.honey })
  hi('StorageClass', { fg = c.warm_orange })
  hi('Structure', { fg = c.warm_orange })
  hi('Typedef', { fg = c.brick })

  hi('Special', { fg = c.honey })
  hi('SpecialChar', { fg = c.honey })
  hi('Tag', { fg = c.warm_orange })
  hi('Delimiter', { fg = c.fg })
  hi('SpecialComment', { fg = c.comment, italic = true })
  hi('Debug', { fg = c.warm_orange })

  hi('Underlined', { underline = true })
  hi('Bold', { bold = true })
  hi('Italic', { italic = true })
  hi('Error', { fg = c.brick })
  hi('Todo', { fg = c.bg, bg = c.storm_blue, bold = true })

  -- Named color groups (from on_highlights overrides)
  hi('Red', { fg = c.red })
  hi('Orange', { fg = c.orange })
  hi('Purple', { fg = c.purple })
  hi('PurpleItalic', { fg = c.dusty_purple })

  ---------------------------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------------------------
  -- Identifiers (on_highlights overrides)
  hi('@variable', { fg = c.deep_forest })
  hi('@variable.builtin', { fg = c.driftwood })
  hi('@variable.parameter', { fg = c.clay })
  -- Default: Blue
  hi('@variable.member', { fg = c.storm_blue })

  -- on_highlights override
  hi('@constant', { fg = c.earth_brown })
  -- Defaults: PurpleItalic
  hi('@constant.builtin', { fg = c.dusty_purple })
  hi('@constant.macro', { fg = c.dusty_purple })

  -- Default: YellowItalic (no italic since italics=false)
  hi('@module', { fg = c.honey })
  hi('@module.builtin', { fg = c.honey })
  -- Default: Orange
  hi('@label', { fg = c.warm_orange })

  -- Literals
  -- on_highlights override
  hi('@string', { fg = c.moss })
  hi('@string.documentation', { fg = c.comment, italic = true })
  -- Default: Green
  hi('@string.escape', { fg = c.olive })
  hi('@string.regexp', { fg = c.olive })
  -- Default: SpecialChar -> Yellow
  hi('@string.special', { fg = c.honey })
  -- Default: Aqua
  hi('@string.special.symbol', { fg = c.aqua })
  -- Default: TSURI -> Blue underline
  hi('@string.special.url', { fg = c.storm_blue, underline = true })
  hi('@string.special.path', { fg = c.storm_blue })

  -- Default: Aqua
  hi('@character', { fg = c.aqua })
  hi('@character.special', { fg = c.aqua })
  -- on_highlights overrides
  hi('@boolean', { fg = c.earth_brown })
  hi('@number', { fg = c.warm_amber })
  -- on_highlights override
  hi('@number.float', { fg = c.petal })

  -- Types
  -- on_highlights override
  hi('@type', { fg = c.sage_green })
  -- Default: YellowItalic (no italic)
  hi('@type.builtin', { fg = c.honey })
  hi('@type.definition', { fg = c.honey })
  -- Default: Orange
  hi('@type.qualifier', { fg = c.warm_orange })

  -- Default: Purple
  hi('@attribute', { fg = c.dusty_purple })
  hi('@attribute.builtin', { fg = c.dusty_purple })
  -- Default: Blue
  hi('@property', { fg = c.storm_blue })

  -- Functions
  -- on_highlights override
  hi('@function', { fg = c.blue_stone })
  -- on_highlights override
  hi('@function.builtin', { fg = c.bark })
  -- Default: Green
  hi('@function.call', { fg = c.olive })
  hi('@function.macro', { fg = c.olive })
  hi('@function.method', { fg = c.olive })
  hi('@function.method.call', { fg = c.olive })
  hi('@constructor', { fg = c.olive })

  -- Keywords
  -- on_highlights override
  hi('@keyword', { fg = c.terracotta })
  -- Default: Red
  hi('@keyword.coroutine', { fg = c.brick })
  hi('@keyword.function', { fg = c.brick })
  -- Default: Orange
  hi('@keyword.operator', { fg = c.warm_orange })
  -- Default: Red (TSInclude)
  hi('@keyword.import', { fg = c.brick })
  -- Default: inherits @keyword (on_highlights override)
  hi('@keyword.type', { fg = c.terracotta })
  -- Default: Orange (TSTypeQualifier)
  hi('@keyword.modifier', { fg = c.warm_orange })
  -- Default: Red
  hi('@keyword.repeat', { fg = c.brick })
  hi('@keyword.return', { fg = c.brick })
  -- Default: Orange (Debug)
  hi('@keyword.debug', { fg = c.warm_orange })
  hi('@keyword.exception', { fg = c.brick })
  -- Default: Red (Conditional)
  hi('@keyword.conditional', { fg = c.brick })
  hi('@keyword.conditional.ternary', { fg = c.brick })
  -- Default: PurpleItalic (PreProc)
  hi('@keyword.directive', { fg = c.dusty_purple })
  hi('@keyword.directive.define', { fg = c.dusty_purple })
  -- Default: Orange (StorageClass)
  hi('@keyword.storage', { fg = c.warm_orange })

  -- Operators & punctuation (on_highlights overrides)
  hi('@operator', { fg = c.charcoal })
  hi('@punctuation', { fg = c.stone_grey })
  hi('@punctuation.bracket', { fg = c.stone_grey })
  hi('@punctuation.delimiter', { fg = c.lichen })
  hi('@punctuation.special', { fg = c.twig })

  -- Comments
  hi('@comment', { fg = c.comment, italic = true })
  hi('@comment.documentation', { fg = c.comment, italic = true })
  -- on_highlights overrides (from @text.danger/warning/todo/note)
  hi('@comment.error', { fg = c.coral, bold = true })
  hi('@comment.warning', { fg = c.honey, bold = true })
  hi('@comment.todo', { fg = c.sage, bold = true })
  hi('@comment.note', { fg = c.storm_blue, bold = true })

  -- Markup
  hi('@markup.strong', { bold = true })
  hi('@markup.italic', { italic = true })
  hi('@markup.strikethrough', { strikethrough = true })
  hi('@markup.underline', { underline = true })
  -- Default: Title -> Orange
  hi('@markup.heading', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.1', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.2', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.3', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.4', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.5', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.6', { fg = c.warm_orange, bold = true })
  -- Default: Grey
  hi('@markup.quote', { fg = c.light_pebble, italic = true })
  hi('@markup.math', { fg = c.warm_amber })
  -- Default: Constant -> Aqua
  hi('@markup.link', { fg = c.aqua })
  hi('@markup.link.label', { fg = c.aqua })
  -- Default: TSURI -> Blue underline
  hi('@markup.link.url', { fg = c.storm_blue, underline = true })
  -- Default: String -> Green
  hi('@markup.raw', { fg = c.olive })
  hi('@markup.raw.block', { fg = c.fg })
  -- Default: TSPunctSpecial -> Blue
  hi('@markup.list', { fg = c.storm_blue })
  hi('@markup.list.checked', { fg = c.olive, bold = true })
  hi('@markup.list.unchecked', { fg = c.sage, bold = true })

  -- Tags (HTML/JSX) - Default: Orange/Green
  hi('@tag', { fg = c.warm_orange })
  hi('@tag.attribute', { fg = c.olive })
  hi('@tag.delimiter', { fg = c.olive })
  hi('@tag.builtin', { fg = c.warm_orange })

  -- Diff
  hi('@diff.plus', { fg = c.olive })
  hi('@diff.minus', { fg = c.brick })
  hi('@diff.delta', { fg = c.storm_blue })

  -- @text aliases (older treesitter, from on_highlights)
  hi('@text.todo', { fg = c.sage, bold = true })
  hi('@text.note', { fg = c.storm_blue, bold = true })
  hi('@text.warning', { fg = c.honey, bold = true })
  hi('@text.danger', { fg = c.coral, bold = true })
  hi('@text.todo.unchecked', { fg = c.sage, bold = true })
  hi('@text.todo.checked', { fg = c.olive, bold = true })

  ---------------------------------------------------------------------------
  -- LSP semantic tokens
  ---------------------------------------------------------------------------
  hi('@lsp.type.class', { link = '@type' })
  hi('@lsp.type.comment', { link = '@comment' })
  hi('@lsp.type.decorator', { link = '@function' })
  hi('@lsp.type.enum', { link = '@type' })
  hi('@lsp.type.enumMember', { link = '@property' })
  hi('@lsp.type.event', { link = '@type' })
  hi('@lsp.type.function', { link = '@function' })
  hi('@lsp.type.interface', { link = '@type' })
  hi('@lsp.type.keyword', { link = '@keyword' })
  hi('@lsp.type.macro', { link = '@function.macro' })
  hi('@lsp.type.method', { link = '@function.method' })
  hi('@lsp.type.modifier', { link = '@keyword.modifier' })
  hi('@lsp.type.namespace', { link = '@module' })
  hi('@lsp.type.number', { link = '@number' })
  hi('@lsp.type.operator', { link = '@operator' })
  hi('@lsp.type.parameter', { link = '@variable.parameter' })
  hi('@lsp.type.property', { link = '@property' })
  hi('@lsp.type.regexp', { link = '@string.regexp' })
  hi('@lsp.type.string', { link = '@string' })
  hi('@lsp.type.struct', { link = '@type' })
  hi('@lsp.type.type', { link = '@type' })
  hi('@lsp.type.typeParameter', { link = '@type.definition' })
  hi('@lsp.type.variable', { link = '@variable' })

  hi('@lsp.type.generic', { fg = c.olive })

  hi('@lsp.mod.deprecated', { strikethrough = true })
  hi('@lsp.mod.readonly', { italic = true })
  hi('@lsp.mod.defaultLibrary', { link = '@variable.builtin' })

  ---------------------------------------------------------------------------
  -- LSP
  ---------------------------------------------------------------------------
  hi('LspReferenceText', { bg = c.bg_reference })
  hi('LspReferenceRead', { bg = c.bg_reference })
  hi('LspReferenceWrite', { bg = c.bg_reference_write, bold = true })
  hi('LspSignatureActiveParameter', { underline = true, sp = c.terracotta })
  hi('LspInlayHint', { link = 'LineNr' })
  hi('LspCodeLens', { fg = c.light_pebble })
  hi('LspCodeLensSeparator', { fg = c.pale_stone })
  hi('LspInfoBorder', { link = 'FloatBorder' })

  ---------------------------------------------------------------------------
  -- Diagnostics (diagnostic_virtual_text = 'grey' uses bg2)
  ---------------------------------------------------------------------------
  hi('DiagnosticError', { fg = c.coral })
  hi('DiagnosticWarn', { fg = c.honey })
  hi('DiagnosticInfo', { fg = c.sage })
  hi('DiagnosticHint', { fg = c.storm_blue })
  hi('DiagnosticOk', { fg = c.olive })

  hi('DiagnosticUnderlineError', { undercurl = true, sp = c.coral })
  hi('DiagnosticUnderlineWarn', { undercurl = true, sp = c.honey })
  hi('DiagnosticUnderlineInfo', { undercurl = true, sp = c.sage })
  hi('DiagnosticUnderlineHint', { undercurl = true, sp = c.storm_blue })

  -- grey mode: all virtual text uses bg2 as background
  hi('DiagnosticVirtualTextError', { fg = c.brick, bg = c.bg2 })
  hi('DiagnosticVirtualTextWarn', { fg = c.honey, bg = c.bg2 })
  hi('DiagnosticVirtualTextInfo', { fg = c.storm_blue, bg = c.bg2 })
  hi('DiagnosticVirtualTextHint', { fg = c.dusty_purple, bg = c.bg2 })

  hi('DiagnosticFloatingError', { fg = c.brick })
  hi('DiagnosticFloatingWarn', { fg = c.honey })
  hi('DiagnosticFloatingInfo', { fg = c.storm_blue })
  hi('DiagnosticFloatingHint', { fg = c.dusty_purple })

  hi('DiagnosticSignError', { fg = c.brick })
  hi('DiagnosticSignWarn', { fg = c.honey })
  hi('DiagnosticSignInfo', { fg = c.storm_blue })
  hi('DiagnosticSignHint', { fg = c.dusty_purple })

  hi('ErrorFloat', { fg = c.rust_conditional })

  ---------------------------------------------------------------------------
  -- Treesitter context
  ---------------------------------------------------------------------------
  hi('TreesitterContext', { fg = c.fg, bg = c.bg2 })

  ---------------------------------------------------------------------------
  -- Git signs (from on_highlights)
  ---------------------------------------------------------------------------
  hi('GitSignsAdd', { fg = c.olive })
  hi('GitSignsChange', { fg = c.honey })
  hi('GitSignsDelete', { fg = c.brick })
  hi('GitSignsAddNr', { fg = c.olive })
  hi('GitSignsChangeNr', { fg = c.honey })
  hi('GitSignsDeleteNr', { fg = c.brick })
  hi('GitSignsAddLn', { bg = c.bg_green })
  hi('GitSignsChangeLn', { bg = c.bg_blue })
  hi('GitSignsDeleteLn', { bg = c.bg_red })

  ---------------------------------------------------------------------------
  -- Todo comments (from on_highlights)
  ---------------------------------------------------------------------------
  hi('TodoBgTODO', { bg = c.sage, fg = c.bg_dim, bold = true })
  hi('TodoFgTODO', { fg = c.sage, bold = true })
  hi('TodoSignTODO', { fg = c.sage, bold = true })

  hi('TodoBgFIX', { bg = c.coral, fg = c.bg_dim, bold = true })
  hi('TodoFgFIX', { fg = c.coral, bold = true })
  hi('TodoSignFIX', { fg = c.coral, bold = true })

  hi('TodoBgHACK', { bg = c.honey, fg = c.bg_dim, bold = true })
  hi('TodoFgHACK', { fg = c.honey, bold = true })
  hi('TodoSignHACK', { fg = c.honey, bold = true })

  hi('TodoBgWARN', { bg = c.honey, fg = c.bg_dim, bold = true })
  hi('TodoFgWARN', { fg = c.honey, bold = true })
  hi('TodoSignWARN', { fg = c.honey, bold = true })

  hi('TodoBgPERF', { bg = c.dusty_purple, fg = c.bg_dim, bold = true })
  hi('TodoFgPERF', { fg = c.dusty_purple, bold = true })
  hi('TodoSignPERF', { fg = c.dusty_purple, bold = true })

  hi('TodoBgNOTE', { bg = c.storm_blue, fg = c.bg_dim, bold = true })
  hi('TodoFgNOTE', { fg = c.storm_blue, bold = true })
  hi('TodoSignNOTE', { fg = c.storm_blue, bold = true })

  hi('TodoBgTEST', { bg = c.dusty_purple, fg = c.bg_dim, bold = true })
  hi('TodoFgTEST', { fg = c.dusty_purple, bold = true })
  hi('TodoSignTEST', { fg = c.dusty_purple, bold = true })

  ---------------------------------------------------------------------------
  -- Yanky (from on_highlights)
  ---------------------------------------------------------------------------
  hi('YankyPut', { bg = c.bg_yank })
  hi('YankyYanked', { bg = c.bg_yank })

  ---------------------------------------------------------------------------
  -- Blink pairs (from on_highlights)
  ---------------------------------------------------------------------------
  hi('BlinkPairsWarm1', { fg = c.warm_orange })
  hi('BlinkPairsWarm2', { fg = c.river_stone })

  ---------------------------------------------------------------------------
  -- Rust overrides (from on_highlights)
  ---------------------------------------------------------------------------
  hi('@keyword.rust', { fg = c.rust_keyword })
  hi('@keyword.conditional.rust', { fg = c.rust_conditional })
  hi('@keyword.modifier.rust', { fg = c.rust_modifier })
  hi('@keyword.function.rust', { fg = c.rust_wood })
  hi('@keyword.storage.rust', { fg = c.rust_storage })
  hi('@keyword.import.rust', { fg = c.rust_import })
  hi('@type.rust', { fg = c.rust_type })
  hi('@function.rust', { fg = c.rust_function })
  hi('@function.method.call.rust', { fg = c.rust_call })
  hi('@attribute.rust', { fg = c.dusty_purple })
  hi('@operator.rust', { fg = c.rust_operator })
  hi('@label.rust', { fg = c.dusty_purple })
  hi('@constant.builtin.rust', { fg = c.rust_constant })
  hi('@number.float.rust', { fg = c.rust_float })

  -- Rust LSP semantic tokens (override generic LSP types for Rust)
  hi('@lsp.type.type.rust', { fg = c.rust_type })
  hi('@lsp.type.struct.rust', { fg = c.rust_type })
  hi('@lsp.type.enum.rust', { fg = c.rust_type })
  hi('@lsp.type.interface.rust', { fg = c.rust_type })
  hi('@lsp.type.typeParameter.rust', { fg = c.rust_type })
  hi('@lsp.type.keyword.rust', { fg = c.rust_keyword })
  hi('@lsp.type.function.rust', { fg = c.rust_function })
  hi('@lsp.type.method.rust', { fg = c.rust_method })
  hi('@lsp.type.macro.rust', { fg = c.dusty_purple })
  hi('@lsp.type.namespace.rust', { fg = c.honey })
  hi('@lsp.type.property.rust', { fg = c.storm_blue })
  hi('@lsp.type.variable.rust', { fg = c.deep_forest })
  hi('@lsp.type.parameter.rust', { fg = c.clay })
  hi('@lsp.typemod.keyword.controlFlow.rust', { fg = c.rust_control_flow })
  hi('@lsp.mod.constant.rust', { fg = c.rust_storage })

  ---------------------------------------------------------------------------
  -- NeoTree (everforest defaults with user palette)
  ---------------------------------------------------------------------------
  hi('NeoTreeNormal', { fg = c.fg, bg = c.bg_dim })
  hi('NeoTreeNormalNC', { fg = c.fg, bg = c.bg_dim })
  hi('NeoTreeEndOfBuffer', { fg = c.bg_dim, bg = c.bg_dim })
  hi('NeoTreeWinSeparator', { fg = c.bg, bg = c.bg })
  hi('NeoTreeCursorLine', { bg = c.bg })
  hi('NeoTreeDirectoryName', { fg = c.olive })
  hi('NeoTreeDirectoryIcon', { fg = c.olive })
  hi('NeoTreeFileName', { fg = c.fg })
  hi('NeoTreeFileIcon', { fg = c.stone_grey })
  hi('NeoTreeRootName', { fg = c.warm_orange, bold = true })
  hi('NeoTreeGitAdded', { fg = c.olive })
  hi('NeoTreeGitModified', { fg = c.honey })
  hi('NeoTreeGitDeleted', { fg = c.brick })
  hi('NeoTreeGitConflict', { fg = c.coral, bold = true })
  hi('NeoTreeGitUntracked', { fg = c.dusty_purple })
  hi('NeoTreeIndentMarker', { fg = c.pale_stone })

  ---------------------------------------------------------------------------
  -- WhichKey
  ---------------------------------------------------------------------------
  hi('WhichKey', { fg = c.brick })
  hi('WhichKeyGroup', { fg = c.olive })
  hi('WhichKeySeparator', { fg = c.light_pebble })
  hi('WhichKeyDesc', { fg = c.storm_blue })
  hi('WhichKeyFloat', { bg = c.bg1 })
  hi('WhichKeyBorder', { fg = c.light_pebble, bg = c.bg1 })
  hi('WhichKeyValue', { fg = c.light_pebble })

  ---------------------------------------------------------------------------
  -- Lazy.nvim
  ---------------------------------------------------------------------------
  hi('LazyH1', { fg = c.bg, bg = c.olive, bold = true })
  hi('LazyButton', { fg = c.light_pebble, bg = c.bg2 })
  hi('LazyButtonActive', { fg = c.bg, bg = c.brick, bold = true })
  hi('LazySpecial', { fg = c.honey })
  hi('LazyReasonPlugin', { fg = c.olive })
  hi('LazyReasonEvent', { fg = c.honey })
  hi('LazyReasonKeys', { fg = c.dusty_purple })
  hi('LazyReasonCmd', { fg = c.storm_blue })

  ---------------------------------------------------------------------------
  -- Trouble
  ---------------------------------------------------------------------------
  hi('TroubleNormal', { fg = c.fg, bg = c.bg_dim })
  hi('TroubleNormalNC', { fg = c.fg, bg = c.bg_dim })
  hi('TroubleCount', { fg = c.bg, bg = c.terracotta, bold = true })

  ---------------------------------------------------------------------------
  -- Flash
  ---------------------------------------------------------------------------
  hi('FlashMatch', { fg = c.fg, bg = c.bg_yellow })
  hi('FlashCurrent', { fg = c.bg, bg = c.olive, bold = true })
  hi('FlashLabel', { fg = c.bg, bg = c.brick, bold = true })

  ---------------------------------------------------------------------------
  -- Noice
  ---------------------------------------------------------------------------
  hi('NoiceCmdlinePopup', { fg = c.fg, bg = c.bg2 })
  hi('NoiceCmdlinePopupBorder', { fg = c.light_pebble, bg = c.bg2 })
  hi('NoiceCmdlineIcon', { fg = c.olive })
  hi('NoiceMini', { fg = c.fg, bg = c.bg2 })
end

return M
