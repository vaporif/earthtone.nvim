local langs = {
  'rust',
  'typescript',
  'go',
  'python',
  'nix',
  'lua',
  'bash',
  'json',
  'yaml',
  'c',
  'cpp',
}

return function(hi, c)
  for _, lang in ipairs(langs) do
    require('earthtone.groups.languages.' .. lang)(hi, c)
  end
end
