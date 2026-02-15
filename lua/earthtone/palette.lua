local M = {}

function M.get(variant)
  if variant == 'dark' then
    return require 'earthtone.palette.dark'
  end
  return require 'earthtone.palette.light'
end

return M
