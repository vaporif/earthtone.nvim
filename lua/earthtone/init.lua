local M = {}

local config = {}
local current_variant = nil
local loading = false

function M.setup(opts)
  config = opts or {}
  M.load()
end

local function resolve_background()
  local bg = config.background or 'auto'
  if bg == 'auto' then
    return vim.o.background or 'light'
  end
  return bg
end

local function clear_module_cache()
  for key in pairs(package.loaded) do
    if key:find '^earthtone%.' then
      package.loaded[key] = nil
    end
  end
end

function M.load()
  if loading then
    return
  end
  loading = true

  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  local variant = resolve_background()

  if variant ~= current_variant then
    clear_module_cache()
    current_variant = variant
  end

  vim.g.colors_name = 'earthtone'
  vim.o.termguicolors = true
  vim.o.background = variant

  local palette = require 'earthtone.palette'
  local c = vim.tbl_extend('force', palette.get(variant), config.palette or {})

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

  loading = false
end

return M
