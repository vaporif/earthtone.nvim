return function(hi, c)
  hi('@property.toml', { fg = c.storm_blue })
  hi('@string.toml', { fg = c.moss })
  hi('@number.toml', { fg = c.dark_amber })
  hi('@number.float.toml', { fg = c.float_muted })
  hi('@boolean.toml', { fg = c.constant_warm })
  hi('@constant.builtin.toml', { fg = c.constant_warm })
  hi('@type.toml', { fg = c.type_deep })
end
