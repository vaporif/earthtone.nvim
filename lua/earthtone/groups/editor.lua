return function(hi, c)
  -- Terminal
  vim.g.terminal_color_0 = c.fg
  vim.g.terminal_color_1 = c.brick
  vim.g.terminal_color_2 = c.olive
  vim.g.terminal_color_3 = c.toffee
  vim.g.terminal_color_4 = c.storm_blue
  vim.g.terminal_color_5 = c.plum
  vim.g.terminal_color_6 = c.teal
  vim.g.terminal_color_7 = c.pale_stone
  vim.g.terminal_color_8 = c.stone_grey
  vim.g.terminal_color_9 = c.coral
  vim.g.terminal_color_10 = c.olive
  vim.g.terminal_color_11 = c.warm_orange
  vim.g.terminal_color_12 = c.storm_blue
  vim.g.terminal_color_13 = c.plum
  vim.g.terminal_color_14 = c.teal
  vim.g.terminal_color_15 = c.bg_dim

  -- Editor UI
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
  hi('Substitute', { fg = c.bg, bg = c.toffee })

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
  hi('WarningMsg', { fg = c.toffee, bold = true })
  hi('ModeMsg', { fg = c.fg, bold = true })
  hi('MoreMsg', { fg = c.olive, bold = true })
  hi('Question', { fg = c.olive, bold = true })

  -- Diff
  hi('DiffAdd', { bg = c.bg_green })
  hi('DiffChange', { bg = c.bg_blue })
  hi('DiffDelete', { bg = c.bg_red })
  hi('DiffText', { fg = c.bg, bg = c.storm_blue })
  hi('Added', { fg = c.olive })
  hi('Changed', { fg = c.storm_blue })
  hi('Removed', { fg = c.brick })

  -- Spell
  hi('SpellBad', { undercurl = true, sp = c.brick })
  hi('SpellCap', { undercurl = true, sp = c.toffee })
  hi('SpellLocal', { undercurl = true, sp = c.teal })
  hi('SpellRare', { undercurl = true, sp = c.plum })
end
