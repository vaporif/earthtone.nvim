local M = {}

local config = {}

function M.setup(opts)
  config = opts or {}
end

function M.load()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.g.colors_name = 'earthtone'
  vim.o.termguicolors = true
  vim.o.background = 'light'

  local c = vim.tbl_extend('force', require 'earthtone.palette', config.palette or {})

  local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  require 'earthtone.groups.editor'(hi, c)
  require 'earthtone.groups.syntax'(hi, c)
  require 'earthtone.groups.lsp'(hi, c)
  require 'earthtone.groups.languages'(hi, c)
  require 'earthtone.groups.plugins'(hi, c)

  for group, opts in pairs(config.overrides or {}) do
    hi(group, opts)
  end
end

return M
