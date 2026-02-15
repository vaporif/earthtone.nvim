local c = require 'earthtone.palette'

return {
  normal = {
    a = { bg = c.statusline1, fg = c.bg, gui = 'bold' },
    b = { bg = c.bg3, fg = c.statusline3 },
    c = { bg = c.bg1, fg = c.light_pebble },
  },
  insert = {
    a = { bg = c.sage, fg = c.bg, gui = 'bold' },
    b = { bg = c.bg3, fg = c.statusline3 },
    c = { bg = c.bg1, fg = c.light_pebble },
  },
  visual = {
    a = { bg = c.plum, fg = c.bg, gui = 'bold' },
    b = { bg = c.bg3, fg = c.statusline3 },
    c = { bg = c.bg1, fg = c.light_pebble },
  },
  replace = {
    a = { bg = c.coral, fg = c.bg, gui = 'bold' },
    b = { bg = c.bg3, fg = c.statusline3 },
    c = { bg = c.bg1, fg = c.light_pebble },
  },
  command = {
    a = { bg = c.dark_amber, fg = c.bg, gui = 'bold' },
    b = { bg = c.bg3, fg = c.statusline3 },
    c = { bg = c.bg1, fg = c.light_pebble },
  },
  terminal = {
    a = { bg = c.olive, fg = c.bg, gui = 'bold' },
    b = { bg = c.bg3, fg = c.statusline3 },
    c = { bg = c.bg1, fg = c.light_pebble },
  },
  inactive = {
    a = { bg = c.bg1, fg = c.light_pebble },
    b = { bg = c.bg1, fg = c.light_pebble },
    c = { bg = c.bg1, fg = c.light_pebble },
  },
}
