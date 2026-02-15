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

  require 'earthtone.groups.editor'(hi, c)
  require 'earthtone.groups.syntax'(hi, c)
  require 'earthtone.groups.lsp'(hi, c)
  require 'earthtone.groups.languages'(hi, c)
  require 'earthtone.groups.plugins'(hi, c)
end

return M
