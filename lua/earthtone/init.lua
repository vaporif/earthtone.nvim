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
  vim.g.terminal_color_0 = c.fg
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
  hi('CursorLineNr', { fg = c.light_pebble })
  hi('CursorLineFold', { bg = c.bg1 })
  hi('CursorLineSign', { bg = c.bg1 })
  hi('ColorColumn', { bg = c.bg1 })

  hi('LineNr', { fg = c.bg5 })
  hi('LineNrAbove', { fg = c.bg5 })
  hi('LineNrBelow', { fg = c.bg5 })
  hi('SignColumn', { fg = c.fg })
  hi('FoldColumn', { fg = c.pale_stone })
  hi('Folded', { fg = c.light_pebble, bg = c.bg1 })

  hi('Conceal', { fg = c.bg5 })
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
  -- Vim syntax
  ---------------------------------------------------------------------------
  hi('Comment', { fg = c.comment, italic = true })
  hi('String', { fg = c.moss })
  hi('Character', { fg = c.moss })
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

  -- Named groups referenced by other highlight links
  hi('Red', { fg = c.red })
  hi('Orange', { fg = c.orange })
  hi('Purple', { fg = c.purple })
  hi('PurpleItalic', { fg = c.dusty_purple })

  ---------------------------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------------------------
  hi('@variable', { fg = c.deep_forest })
  hi('@variable.builtin', { fg = c.driftwood })
  hi('@variable.parameter', { fg = c.clay })
  hi('@variable.member', { fg = c.storm_blue })

  hi('@constant', { fg = c.earth_brown })
  hi('@constant.builtin', { fg = c.dusty_purple })
  hi('@constant.macro', { fg = c.dusty_purple })

  hi('@module', { fg = c.honey })
  hi('@module.builtin', { fg = c.honey })
  hi('@label', { fg = c.warm_orange })

  hi('@string', { fg = c.moss })
  hi('@string.documentation', { fg = c.comment, italic = true })
  hi('@string.escape', { fg = c.olive })
  hi('@string.regexp', { fg = c.olive })
  hi('@string.special', { fg = c.honey })
  hi('@string.special.symbol', { fg = c.aqua })
  hi('@string.special.url', { fg = c.storm_blue, underline = true })
  hi('@string.special.path', { fg = c.storm_blue })

  hi('@character', { fg = c.aqua })
  hi('@character.special', { fg = c.aqua })
  hi('@boolean', { fg = c.earth_brown })
  hi('@number', { fg = c.warm_amber })
  hi('@number.float', { fg = c.petal })

  hi('@type', { fg = c.sage_green })
  hi('@type.builtin', { fg = c.honey })
  hi('@type.definition', { fg = c.honey })
  hi('@type.qualifier', { fg = c.warm_orange })

  hi('@attribute', { fg = c.dusty_purple })
  hi('@attribute.builtin', { fg = c.dusty_purple })
  hi('@property', { fg = c.storm_blue })

  hi('@function', { fg = c.blue_stone })
  hi('@function.builtin', { fg = c.bark })
  hi('@function.call', { fg = c.olive })
  hi('@function.macro', { fg = c.olive })
  hi('@function.method', { fg = c.olive })
  hi('@function.method.call', { fg = c.olive })
  hi('@constructor', { fg = c.olive })

  hi('@keyword', { fg = c.terracotta })
  hi('@keyword.coroutine', { fg = c.brick })
  hi('@keyword.function', { fg = c.brick })
  hi('@keyword.operator', { fg = c.warm_orange })
  hi('@keyword.import', { fg = c.brick })
  hi('@keyword.type', { fg = c.terracotta })
  hi('@keyword.modifier', { fg = c.warm_orange })
  hi('@keyword.repeat', { fg = c.brick })
  hi('@keyword.return', { fg = c.brick })
  hi('@keyword.debug', { fg = c.warm_orange })
  hi('@keyword.exception', { fg = c.brick })
  hi('@keyword.conditional', { fg = c.brick })
  hi('@keyword.conditional.ternary', { fg = c.brick })
  hi('@keyword.directive', { fg = c.dusty_purple })
  hi('@keyword.directive.define', { fg = c.dusty_purple })
  hi('@keyword.storage', { fg = c.warm_orange })

  hi('@operator', { fg = c.charcoal })
  hi('@punctuation', { fg = c.stone_grey })
  hi('@punctuation.bracket', { fg = c.stone_grey })
  hi('@punctuation.delimiter', { fg = c.lichen })
  hi('@punctuation.special', { fg = c.twig })

  hi('@comment', { fg = c.comment, italic = true })
  hi('@comment.documentation', { fg = c.comment, italic = true })
  hi('@comment.error', { fg = c.coral, bold = true })
  hi('@comment.warning', { fg = c.honey, bold = true })
  hi('@comment.todo', { fg = c.sage, bold = true })
  hi('@comment.note', { fg = c.storm_blue, bold = true })

  hi('@markup.strong', { bold = true })
  hi('@markup.italic', { italic = true })
  hi('@markup.strikethrough', { strikethrough = true })
  hi('@markup.underline', { underline = true })
  hi('@markup.heading', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.1', { fg = c.warm_orange, bold = true })
  hi('@markup.heading.2', { fg = c.olive, bold = true })
  hi('@markup.heading.3', { fg = c.honey, bold = true })
  hi('@markup.heading.4', { fg = c.aqua, bold = true })
  hi('@markup.heading.5', { fg = c.storm_blue, bold = true })
  hi('@markup.heading.6', { fg = c.dusty_purple, bold = true })
  hi('@markup.quote', { fg = c.light_pebble, italic = true })
  hi('@markup.math', { fg = c.warm_amber })
  hi('@markup.link', { fg = c.aqua })
  hi('@markup.link.label', { fg = c.aqua })
  hi('@markup.link.url', { fg = c.storm_blue, underline = true })
  hi('@markup.raw', { fg = c.olive })
  hi('@markup.raw.block', { fg = c.fg })
  hi('@markup.list', { fg = c.storm_blue })
  hi('@markup.list.checked', { fg = c.olive, bold = true })
  hi('@markup.list.unchecked', { fg = c.sage, bold = true })

  hi('@tag', { fg = c.warm_orange })
  hi('@tag.attribute', { fg = c.olive })
  hi('@tag.delimiter', { fg = c.olive })
  hi('@tag.builtin', { fg = c.warm_orange })

  hi('@diff.plus', { fg = c.olive })
  hi('@diff.minus', { fg = c.brick })
  hi('@diff.delta', { fg = c.storm_blue })

  -- Legacy @text aliases
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
  -- Diagnostics
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

  hi('DiagnosticVirtualTextError', { fg = c.brick, bg = c.bg2 })
  hi('DiagnosticVirtualTextWarn', { fg = c.honey, bg = c.bg2 })
  hi('DiagnosticVirtualTextInfo', { fg = c.sage, bg = c.bg2 })
  hi('DiagnosticVirtualTextHint', { fg = c.storm_blue, bg = c.bg2 })

  hi('DiagnosticFloatingError', { fg = c.brick })
  hi('DiagnosticFloatingWarn', { fg = c.honey })
  hi('DiagnosticFloatingInfo', { fg = c.sage })
  hi('DiagnosticFloatingHint', { fg = c.storm_blue })

  hi('DiagnosticSignError', { fg = c.brick })
  hi('DiagnosticSignWarn', { fg = c.honey })
  hi('DiagnosticSignInfo', { fg = c.sage })
  hi('DiagnosticSignHint', { fg = c.storm_blue })

  hi('ErrorFloat', { fg = c.brick })

  ---------------------------------------------------------------------------
  -- Rust (semantic variants)
  ---------------------------------------------------------------------------
  hi('@keyword.rust', { fg = c.keyword_warm })
  hi('@keyword.conditional.rust', { fg = c.conditional_warm })
  hi('@keyword.modifier.rust', { fg = c.modifier_copper })
  hi('@keyword.function.rust', { fg = c.keyword_muted })
  hi('@keyword.storage.rust', { fg = c.storage_amber })
  hi('@keyword.import.rust', { fg = c.import_warm })
  hi('@type.rust', { fg = c.type_deep })
  hi('@function.rust', { fg = c.function_deep })
  hi('@function.method.call.rust', { fg = c.call_warm })
  hi('@attribute.rust', { fg = c.dusty_purple })
  hi('@operator.rust', { fg = c.operator_warm })
  hi('@label.rust', { fg = c.dusty_purple })
  hi('@constant.builtin.rust', { fg = c.constant_warm })
  hi('@number.float.rust', { fg = c.float_muted })

  hi('@lsp.type.type.rust', { fg = c.type_deep })
  hi('@lsp.type.struct.rust', { fg = c.type_deep })
  hi('@lsp.type.enum.rust', { fg = c.type_deep })
  hi('@lsp.type.interface.rust', { fg = c.type_deep })
  hi('@lsp.type.typeParameter.rust', { fg = c.type_deep })
  hi('@lsp.type.keyword.rust', { fg = c.keyword_warm })
  hi('@lsp.type.function.rust', { fg = c.function_deep })
  hi('@lsp.type.method.rust', { fg = c.method_sage })
  hi('@lsp.type.macro.rust', { fg = c.dusty_purple })
  hi('@lsp.type.namespace.rust', { fg = c.honey })
  hi('@lsp.type.property.rust', { fg = c.storm_blue })
  hi('@lsp.type.variable.rust', { fg = c.deep_forest })
  hi('@lsp.type.parameter.rust', { fg = c.clay })
  hi('@lsp.typemod.keyword.controlFlow.rust', { fg = c.control_warm })
  hi('@lsp.mod.constant.rust', { fg = c.storage_amber })

  ---------------------------------------------------------------------------
  -- TypeScript / TSX (semantic variants)
  ---------------------------------------------------------------------------
  hi('@keyword.typescript', { fg = c.keyword_warm })
  hi('@keyword.conditional.typescript', { fg = c.conditional_warm })
  hi('@keyword.modifier.typescript', { fg = c.modifier_copper })
  hi('@keyword.function.typescript', { fg = c.keyword_muted })
  hi('@keyword.storage.typescript', { fg = c.storage_amber })
  hi('@keyword.import.typescript', { fg = c.import_warm })
  hi('@keyword.return.typescript', { fg = c.control_warm })
  hi('@keyword.repeat.typescript', { fg = c.conditional_warm })
  hi('@keyword.exception.typescript', { fg = c.conditional_warm })
  hi('@keyword.coroutine.typescript', { fg = c.control_warm })
  hi('@keyword.type.typescript', { fg = c.keyword_warm })
  hi('@type.typescript', { fg = c.type_deep })
  hi('@type.builtin.typescript', { fg = c.type_deep })
  hi('@function.typescript', { fg = c.function_deep })
  hi('@function.call.typescript', { fg = c.call_warm })
  hi('@function.method.typescript', { fg = c.function_deep })
  hi('@function.method.call.typescript', { fg = c.call_warm })
  hi('@constructor.typescript', { fg = c.type_deep })
  hi('@operator.typescript', { fg = c.operator_warm })
  hi('@constant.builtin.typescript', { fg = c.constant_warm })
  hi('@number.float.typescript', { fg = c.float_muted })

  hi('@lsp.type.type.typescript', { fg = c.type_deep })
  hi('@lsp.type.class.typescript', { fg = c.type_deep })
  hi('@lsp.type.enum.typescript', { fg = c.type_deep })
  hi('@lsp.type.interface.typescript', { fg = c.type_deep })
  hi('@lsp.type.typeParameter.typescript', { fg = c.type_deep })
  hi('@lsp.type.keyword.typescript', { fg = c.keyword_warm })
  hi('@lsp.type.function.typescript', { fg = c.function_deep })
  hi('@lsp.type.method.typescript', { fg = c.method_sage })
  hi('@lsp.type.namespace.typescript', { fg = c.honey })
  hi('@lsp.type.property.typescript', { fg = c.storm_blue })
  hi('@lsp.type.variable.typescript', { fg = c.deep_forest })
  hi('@lsp.type.parameter.typescript', { fg = c.clay })

  hi('@keyword.tsx', { fg = c.keyword_warm })
  hi('@keyword.conditional.tsx', { fg = c.conditional_warm })
  hi('@keyword.modifier.tsx', { fg = c.modifier_copper })
  hi('@keyword.function.tsx', { fg = c.keyword_muted })
  hi('@keyword.storage.tsx', { fg = c.storage_amber })
  hi('@keyword.import.tsx', { fg = c.import_warm })
  hi('@keyword.return.tsx', { fg = c.control_warm })
  hi('@keyword.repeat.tsx', { fg = c.conditional_warm })
  hi('@keyword.exception.tsx', { fg = c.conditional_warm })
  hi('@keyword.coroutine.tsx', { fg = c.control_warm })
  hi('@keyword.type.tsx', { fg = c.keyword_warm })
  hi('@type.tsx', { fg = c.type_deep })
  hi('@type.builtin.tsx', { fg = c.type_deep })
  hi('@function.tsx', { fg = c.function_deep })
  hi('@function.call.tsx', { fg = c.call_warm })
  hi('@function.method.tsx', { fg = c.function_deep })
  hi('@function.method.call.tsx', { fg = c.call_warm })
  hi('@constructor.tsx', { fg = c.type_deep })
  hi('@operator.tsx', { fg = c.operator_warm })
  hi('@constant.builtin.tsx', { fg = c.constant_warm })
  hi('@number.float.tsx', { fg = c.float_muted })

  hi('@lsp.type.type.typescriptreact', { fg = c.type_deep })
  hi('@lsp.type.class.typescriptreact', { fg = c.type_deep })
  hi('@lsp.type.enum.typescriptreact', { fg = c.type_deep })
  hi('@lsp.type.interface.typescriptreact', { fg = c.type_deep })
  hi('@lsp.type.typeParameter.typescriptreact', { fg = c.type_deep })
  hi('@lsp.type.keyword.typescriptreact', { fg = c.keyword_warm })
  hi('@lsp.type.function.typescriptreact', { fg = c.function_deep })
  hi('@lsp.type.method.typescriptreact', { fg = c.method_sage })
  hi('@lsp.type.namespace.typescriptreact', { fg = c.honey })
  hi('@lsp.type.property.typescriptreact', { fg = c.storm_blue })
  hi('@lsp.type.variable.typescriptreact', { fg = c.deep_forest })
  hi('@lsp.type.parameter.typescriptreact', { fg = c.clay })

  ---------------------------------------------------------------------------
  -- Go (semantic variants)
  ---------------------------------------------------------------------------
  hi('@keyword.go', { fg = c.keyword_warm })
  hi('@keyword.conditional.go', { fg = c.conditional_warm })
  hi('@keyword.function.go', { fg = c.keyword_muted })
  hi('@keyword.import.go', { fg = c.import_warm })
  hi('@keyword.return.go', { fg = c.control_warm })
  hi('@keyword.repeat.go', { fg = c.conditional_warm })
  hi('@keyword.type.go', { fg = c.keyword_warm })
  hi('@keyword.coroutine.go', { fg = c.control_warm })
  hi('@type.go', { fg = c.type_deep })
  hi('@type.builtin.go', { fg = c.type_deep })
  hi('@function.go', { fg = c.function_deep })
  hi('@function.call.go', { fg = c.call_warm })
  hi('@function.method.go', { fg = c.function_deep })
  hi('@function.method.call.go', { fg = c.call_warm })
  hi('@operator.go', { fg = c.operator_warm })
  hi('@constant.builtin.go', { fg = c.constant_warm })
  hi('@number.float.go', { fg = c.float_muted })

  hi('@lsp.type.type.go', { fg = c.type_deep })
  hi('@lsp.type.struct.go', { fg = c.type_deep })
  hi('@lsp.type.interface.go', { fg = c.type_deep })
  hi('@lsp.type.typeParameter.go', { fg = c.type_deep })
  hi('@lsp.type.keyword.go', { fg = c.keyword_warm })
  hi('@lsp.type.function.go', { fg = c.function_deep })
  hi('@lsp.type.method.go', { fg = c.method_sage })
  hi('@lsp.type.namespace.go', { fg = c.honey })
  hi('@lsp.type.property.go', { fg = c.storm_blue })
  hi('@lsp.type.variable.go', { fg = c.deep_forest })
  hi('@lsp.type.parameter.go', { fg = c.clay })

  ---------------------------------------------------------------------------
  -- Python (semantic variants)
  ---------------------------------------------------------------------------
  hi('@keyword.python', { fg = c.keyword_warm })
  hi('@keyword.conditional.python', { fg = c.conditional_warm })
  hi('@keyword.function.python', { fg = c.keyword_muted })
  hi('@keyword.import.python', { fg = c.import_warm })
  hi('@keyword.return.python', { fg = c.control_warm })
  hi('@keyword.repeat.python', { fg = c.conditional_warm })
  hi('@keyword.exception.python', { fg = c.conditional_warm })
  hi('@keyword.coroutine.python', { fg = c.control_warm })
  hi('@keyword.operator.python', { fg = c.operator_warm })
  hi('@type.python', { fg = c.type_deep })
  hi('@type.builtin.python', { fg = c.type_deep })
  hi('@function.python', { fg = c.function_deep })
  hi('@function.call.python', { fg = c.call_warm })
  hi('@function.method.python', { fg = c.function_deep })
  hi('@function.method.call.python', { fg = c.call_warm })
  hi('@function.builtin.python', { fg = c.bark })
  hi('@constructor.python', { fg = c.type_deep })
  hi('@attribute.python', { fg = c.dusty_purple })
  hi('@operator.python', { fg = c.operator_warm })
  hi('@constant.builtin.python', { fg = c.constant_warm })
  hi('@number.float.python', { fg = c.float_muted })

  hi('@lsp.type.type.python', { fg = c.type_deep })
  hi('@lsp.type.class.python', { fg = c.type_deep })
  hi('@lsp.type.enum.python', { fg = c.type_deep })
  hi('@lsp.type.typeParameter.python', { fg = c.type_deep })
  hi('@lsp.type.keyword.python', { fg = c.keyword_warm })
  hi('@lsp.type.function.python', { fg = c.function_deep })
  hi('@lsp.type.method.python', { fg = c.method_sage })
  hi('@lsp.type.namespace.python', { fg = c.honey })
  hi('@lsp.type.property.python', { fg = c.storm_blue })
  hi('@lsp.type.variable.python', { fg = c.deep_forest })
  hi('@lsp.type.parameter.python', { fg = c.clay })
  hi('@lsp.type.decorator.python', { fg = c.dusty_purple })

  ---------------------------------------------------------------------------
  -- Nix (semantic variants)
  ---------------------------------------------------------------------------
  hi('@keyword.nix', { fg = c.keyword_warm })
  hi('@keyword.conditional.nix', { fg = c.conditional_warm })
  hi('@keyword.function.nix', { fg = c.keyword_muted })
  hi('@keyword.import.nix', { fg = c.import_warm })
  hi('@keyword.return.nix', { fg = c.control_warm })
  hi('@keyword.repeat.nix', { fg = c.conditional_warm })
  hi('@keyword.operator.nix', { fg = c.operator_warm })
  hi('@function.nix', { fg = c.function_deep })
  hi('@function.call.nix', { fg = c.call_warm })
  hi('@function.builtin.nix', { fg = c.bark })
  hi('@operator.nix', { fg = c.operator_warm })
  hi('@constant.builtin.nix', { fg = c.constant_warm })
  hi('@number.float.nix', { fg = c.float_muted })
  hi('@punctuation.special.nix', { fg = c.operator_warm })

  ---------------------------------------------------------------------------
  -- Plugins
  ---------------------------------------------------------------------------

  -- treesitter-context
  hi('TreesitterContext', { fg = c.fg, bg = c.bg2 })

  -- gitsigns
  hi('GitSignsAdd', { fg = c.olive })
  hi('GitSignsChange', { fg = c.honey })
  hi('GitSignsDelete', { fg = c.brick })
  hi('GitSignsAddNr', { fg = c.olive })
  hi('GitSignsChangeNr', { fg = c.honey })
  hi('GitSignsDeleteNr', { fg = c.brick })
  hi('GitSignsAddLn', { bg = c.bg_green })
  hi('GitSignsChangeLn', { bg = c.bg_blue })
  hi('GitSignsDeleteLn', { bg = c.bg_red })

  -- todo-comments
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

  -- yanky
  hi('YankyPut', { bg = c.bg_yank })
  hi('YankyYanked', { bg = c.bg_yank })

  -- blink.pairs
  hi('BlinkPairsWarm1', { fg = c.warm_orange })
  hi('BlinkPairsWarm2', { fg = c.river_stone })

  -- neo-tree
  hi('NeoTreeNormal', { fg = c.fg, bg = c.bg_dim })
  hi('NeoTreeNormalNC', { fg = c.fg, bg = c.bg_dim })
  hi('NeoTreeEndOfBuffer', { fg = c.bg_dim, bg = c.bg_dim })
  hi('NeoTreeWinSeparator', { fg = c.bg, bg = c.bg })
  hi('NeoTreeCursorLine', { bg = c.bg })
  hi('NeoTreeDirectoryName', { fg = c.olive })
  hi('NeoTreeDirectoryIcon', { fg = c.honey })
  hi('NeoTreeFileName', { fg = c.fg })
  hi('NeoTreeFileIcon', { fg = c.stone_grey })
  hi('NeoTreeRootName', { fg = c.warm_orange, bold = true })
  hi('NeoTreeGitAdded', { fg = c.olive })
  hi('NeoTreeGitModified', { fg = c.honey })
  hi('NeoTreeGitDeleted', { fg = c.brick })
  hi('NeoTreeGitConflict', { fg = c.coral, bold = true })
  hi('NeoTreeGitUntracked', { fg = c.dusty_purple })
  hi('NeoTreeIndentMarker', { fg = c.pale_stone })

  -- which-key
  hi('WhichKey', { fg = c.brick })
  hi('WhichKeyGroup', { fg = c.olive })
  hi('WhichKeySeparator', { fg = c.light_pebble })
  hi('WhichKeyDesc', { fg = c.storm_blue })
  hi('WhichKeyFloat', { bg = c.bg1 })
  hi('WhichKeyBorder', { fg = c.light_pebble, bg = c.bg1 })
  hi('WhichKeyValue', { fg = c.light_pebble })

  -- lazy.nvim
  hi('LazyH1', { fg = c.bg, bg = c.olive, bold = true })
  hi('LazyButton', { fg = c.light_pebble, bg = c.bg2 })
  hi('LazyButtonActive', { fg = c.bg, bg = c.brick, bold = true })
  hi('LazySpecial', { fg = c.honey })
  hi('LazyReasonPlugin', { fg = c.olive })
  hi('LazyReasonEvent', { fg = c.honey })
  hi('LazyReasonKeys', { fg = c.dusty_purple })
  hi('LazyReasonCmd', { fg = c.storm_blue })

  -- trouble
  hi('TroubleNormal', { fg = c.fg, bg = c.bg_dim })
  hi('TroubleNormalNC', { fg = c.fg, bg = c.bg_dim })
  hi('TroubleCount', { fg = c.bg, bg = c.terracotta, bold = true })

  -- flash
  hi('FlashMatch', { fg = c.fg, bg = c.bg_yellow })
  hi('FlashCurrent', { fg = c.bg, bg = c.olive, bold = true })
  hi('FlashLabel', { fg = c.bg, bg = c.brick, bold = true })

  -- noice
  hi('NoiceCmdlinePopup', { fg = c.fg, bg = c.bg2 })
  hi('NoiceCmdlinePopupBorder', { fg = c.light_pebble, bg = c.bg2 })
  hi('NoiceCmdlineIcon', { fg = c.olive })
  hi('NoiceMini', { fg = c.fg, bg = c.bg2 })

  -- blink.cmp
  hi('BlinkCmpMenu', { fg = c.fg, bg = c.bg2 })
  hi('BlinkCmpMenuBorder', { fg = c.light_pebble, bg = c.bg2 })
  hi('BlinkCmpMenuSelection', { fg = c.bg, bg = c.statusline1 })
  hi('BlinkCmpScrollBarThumb', { bg = c.river_stone })
  hi('BlinkCmpScrollBarGutter', { bg = c.bg2 })
  hi('BlinkCmpLabel', { fg = c.fg })
  hi('BlinkCmpLabelDeprecated', { fg = c.light_pebble, strikethrough = true })
  hi('BlinkCmpLabelMatch', { fg = c.olive, bold = true })
  hi('BlinkCmpLabelDetail', { fg = c.light_pebble })
  hi('BlinkCmpLabelDescription', { fg = c.light_pebble })
  hi('BlinkCmpKind', { fg = c.honey })
  hi('BlinkCmpKindText', { fg = c.fg })
  hi('BlinkCmpKindMethod', { fg = c.olive })
  hi('BlinkCmpKindFunction', { fg = c.blue_stone })
  hi('BlinkCmpKindConstructor', { fg = c.olive })
  hi('BlinkCmpKindField', { fg = c.storm_blue })
  hi('BlinkCmpKindVariable', { fg = c.deep_forest })
  hi('BlinkCmpKindClass', { fg = c.sage_green })
  hi('BlinkCmpKindInterface', { fg = c.sage_green })
  hi('BlinkCmpKindModule', { fg = c.honey })
  hi('BlinkCmpKindProperty', { fg = c.storm_blue })
  hi('BlinkCmpKindUnit', { fg = c.dusty_purple })
  hi('BlinkCmpKindValue', { fg = c.earth_brown })
  hi('BlinkCmpKindEnum', { fg = c.sage_green })
  hi('BlinkCmpKindKeyword', { fg = c.terracotta })
  hi('BlinkCmpKindSnippet', { fg = c.aqua })
  hi('BlinkCmpKindColor', { fg = c.honey })
  hi('BlinkCmpKindFile', { fg = c.olive })
  hi('BlinkCmpKindReference', { fg = c.aqua })
  hi('BlinkCmpKindFolder', { fg = c.olive })
  hi('BlinkCmpKindEnumMember', { fg = c.storm_blue })
  hi('BlinkCmpKindConstant', { fg = c.earth_brown })
  hi('BlinkCmpKindStruct', { fg = c.sage_green })
  hi('BlinkCmpKindEvent', { fg = c.warm_orange })
  hi('BlinkCmpKindOperator', { fg = c.charcoal })
  hi('BlinkCmpKindTypeParameter', { fg = c.honey })
  hi('BlinkCmpDoc', { fg = c.fg, bg = c.bg2 })
  hi('BlinkCmpDocBorder', { fg = c.light_pebble, bg = c.bg2 })
  hi('BlinkCmpDocSeparator', { fg = c.light_pebble, bg = c.bg2 })
  hi('BlinkCmpSignatureHelp', { fg = c.fg, bg = c.bg2 })
  hi('BlinkCmpSignatureHelpBorder', { fg = c.light_pebble, bg = c.bg2 })
  hi('BlinkCmpSignatureHelpActiveParameter', { underline = true, sp = c.terracotta })
  hi('BlinkCmpGhostText', { fg = c.bg5 })

  -- fzf-lua
  hi('FzfLuaNormal', { fg = c.fg, bg = c.bg_dim })
  hi('FzfLuaBorder', { fg = c.light_pebble, bg = c.bg_dim })
  hi('FzfLuaTitle', { fg = c.warm_orange, bold = true })
  hi('FzfLuaPreviewNormal', { fg = c.fg, bg = c.bg })
  hi('FzfLuaPreviewBorder', { fg = c.light_pebble, bg = c.bg })
  hi('FzfLuaPreviewTitle', { fg = c.warm_orange, bold = true })
  hi('FzfLuaCursorLine', { bg = c.bg1 })
  hi('FzfLuaCursorLineNr', { fg = c.light_pebble, bg = c.bg1 })
  hi('FzfLuaSearch', { fg = c.bg, bg = c.olive })
  hi('FzfLuaHeaderBind', { fg = c.olive })
  hi('FzfLuaHeaderText', { fg = c.warm_orange })
  hi('FzfLuaPathLineNr', { fg = c.light_pebble })
  hi('FzfLuaPathColNr', { fg = c.light_pebble })
  hi('FzfLuaBufName', { fg = c.olive })
  hi('FzfLuaBufNr', { fg = c.dusty_purple })
  hi('FzfLuaBufFlagCur', { fg = c.olive })
  hi('FzfLuaBufFlagAlt', { fg = c.storm_blue })
  hi('FzfLuaFzfNormal', { fg = c.fg })
  hi('FzfLuaFzfCursorLine', { bg = c.bg1 })
  hi('FzfLuaFzfMatch', { fg = c.olive, bold = true })
  hi('FzfLuaFzfBorder', { fg = c.light_pebble })
  hi('FzfLuaFzfGutter', { bg = c.bg_dim })
  hi('FzfLuaFzfPointer', { fg = c.brick })
  hi('FzfLuaFzfMarker', { fg = c.honey })
  hi('FzfLuaFzfPrompt', { fg = c.olive })
  hi('FzfLuaFzfQuery', { fg = c.fg })

  -- nvim-dap
  hi('DapBreakpoint', { fg = c.brick })
  hi('DapBreakpointCondition', { fg = c.honey })
  hi('DapLogPoint', { fg = c.storm_blue })
  hi('DapStopped', { fg = c.olive, bg = c.bg_yellow })
  hi('DapBreakpointRejected', { fg = c.light_pebble })

  -- nvim-dap-ui
  hi('DapUIScope', { fg = c.aqua })
  hi('DapUIType', { fg = c.sage_green })
  hi('DapUIValue', { fg = c.fg })
  hi('DapUIVariable', { fg = c.deep_forest })
  hi('DapUIModifiedValue', { fg = c.honey, bold = true })
  hi('DapUIDecoration', { fg = c.light_pebble })
  hi('DapUIThread', { fg = c.olive })
  hi('DapUIStoppedThread', { fg = c.brick })
  hi('DapUISource', { fg = c.dusty_purple })
  hi('DapUILineNumber', { fg = c.bg5 })
  hi('DapUIFloatNormal', { fg = c.fg, bg = c.bg2 })
  hi('DapUIFloatBorder', { fg = c.light_pebble, bg = c.bg2 })
  hi('DapUIWatchesEmpty', { fg = c.light_pebble })
  hi('DapUIWatchesValue', { fg = c.olive })
  hi('DapUIWatchesError', { fg = c.brick })
  hi('DapUIBreakpointsPath', { fg = c.storm_blue })
  hi('DapUIBreakpointsInfo', { fg = c.olive })
  hi('DapUIBreakpointsCurrentLine', { fg = c.olive, bold = true })
  hi('DapUIBreakpointsDisabledLine', { fg = c.light_pebble })
  hi('DapUICurrentFrameName', { fg = c.olive, bold = true })
  hi('DapUIStepOver', { fg = c.storm_blue })
  hi('DapUIStepInto', { fg = c.storm_blue })
  hi('DapUIStepBack', { fg = c.storm_blue })
  hi('DapUIStepOut', { fg = c.storm_blue })
  hi('DapUIStop', { fg = c.brick })
  hi('DapUIPlayPause', { fg = c.olive })
  hi('DapUIRestart', { fg = c.olive })
  hi('DapUIUnavailable', { fg = c.light_pebble })

  -- neotest
  hi('NeotestPassed', { fg = c.olive })
  hi('NeotestFailed', { fg = c.coral })
  hi('NeotestRunning', { fg = c.honey })
  hi('NeotestSkipped', { fg = c.stone_grey })
  hi('NeotestTest', { fg = c.fg })
  hi('NeotestNamespace', { fg = c.aqua })
  hi('NeotestFile', { fg = c.storm_blue })
  hi('NeotestDir', { fg = c.olive })
  hi('NeotestAdapterName', { fg = c.warm_orange, bold = true })
  hi('NeotestTarget', { fg = c.brick })
  hi('NeotestMarked', { fg = c.honey, bold = true })
  hi('NeotestFocused', { underline = true })
  hi('NeotestIndent', { fg = c.pale_stone })
  hi('NeotestExpandMarker', { fg = c.light_pebble })
  hi('NeotestWatching', { fg = c.honey })
  hi('NeotestUnknown', { fg = c.light_pebble })
  hi('NeotestBorder', { fg = c.light_pebble })

  -- render-markdown
  hi('RenderMarkdownH1', { fg = c.warm_orange, bold = true })
  hi('RenderMarkdownH2', { fg = c.olive, bold = true })
  hi('RenderMarkdownH3', { fg = c.honey, bold = true })
  hi('RenderMarkdownH4', { fg = c.aqua, bold = true })
  hi('RenderMarkdownH5', { fg = c.storm_blue, bold = true })
  hi('RenderMarkdownH6', { fg = c.dusty_purple, bold = true })
  hi('RenderMarkdownH1Bg', { bg = c.bg_yellow })
  hi('RenderMarkdownH2Bg', { bg = c.bg_green })
  hi('RenderMarkdownH3Bg', { bg = c.bg_yellow })
  hi('RenderMarkdownH4Bg', { bg = c.bg_blue })
  hi('RenderMarkdownH5Bg', { bg = c.bg_blue })
  hi('RenderMarkdownH6Bg', { bg = c.bg_red })
  hi('RenderMarkdownCode', { bg = c.bg1 })
  hi('RenderMarkdownCodeInline', { bg = c.bg1 })
  hi('RenderMarkdownCodeBorder', { fg = c.light_pebble, bg = c.bg1 })
  hi('RenderMarkdownBullet', { fg = c.storm_blue })
  hi('RenderMarkdownChecked', { fg = c.olive })
  hi('RenderMarkdownUnchecked', { fg = c.sage })
  hi('RenderMarkdownQuote', { fg = c.light_pebble })
  hi('RenderMarkdownDash', { fg = c.bg4 })
  hi('RenderMarkdownLink', { fg = c.aqua })
  hi('RenderMarkdownMath', { fg = c.warm_amber })
  hi('RenderMarkdownTableHead', { fg = c.olive })
  hi('RenderMarkdownTableRow', { fg = c.fg })

  -- nvim-ufo
  hi('UfoFoldedEllipsis', { fg = c.stone_grey })

  -- diffview
  hi('DiffviewFilePanelTitle', { fg = c.warm_orange, bold = true })
  hi('DiffviewFilePanelCounter', { fg = c.dusty_purple })
  hi('DiffviewFilePanelFileName', { fg = c.fg })
  hi('DiffviewFilePanelPath', { fg = c.light_pebble })
  hi('DiffviewFilePanelRootPath', { fg = c.warm_orange })
  hi('DiffviewFilePanelInsertions', { fg = c.olive })
  hi('DiffviewFilePanelDeletions', { fg = c.brick })
  hi('DiffviewDiffAdd', { bg = c.bg_green })
  hi('DiffviewDiffDelete', { bg = c.bg_red })
  hi('DiffviewDiffChange', { bg = c.bg_blue })
end

return M
