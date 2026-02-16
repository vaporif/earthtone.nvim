return function(hi, c)
  hi('@string.toml', { fg = c.moss })
  hi('@number.toml', { fg = c.rosewood })
  hi('@number.float.toml', { fg = c.rosewood })
  hi('@boolean.toml', { fg = c.rosewood })
  hi('@constant.builtin.toml', { fg = c.rosewood })
  hi('@type.toml', { fg = c.type_deep })
end
