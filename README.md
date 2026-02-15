# earthtone.nvim

A warm, natural light colorscheme for Neovim.

Most themes optimize for looking good in screenshots. earthtone optimizes for staring at code all day — natural material colors (terracotta, moss, sandstone, driftwood) on a warm parchment background (`#e8dcc6`). Our eyes have been looking at dirt, leaves, and rocks for a few million years, so these are easy to process for hours. Distinct enough to tell your keywords from your strings, muted enough to stay comfortable.

Inspired by [everforest](https://github.com/sainnhe/everforest) — earthtone takes the same gentle approach but shifts warmer (parchment bg instead of green-gray, clay/amber syntax instead of botanical greens) and adds per-language tuning for Rust, TypeScript, Go, Python, C/C++, Lua, Nix, Bash, JSON, and YAML.

<img width="1712" height="1054" alt="earthtone.nvim screenshot" src="https://github.com/user-attachments/assets/cabab29e-aa2b-46de-a545-e61e8f91adc9" />

## Install

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'vaporif/earthtone.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('earthtone')
  end,
}
```

### Lualine

```lua
require('lualine').setup {
  options = { theme = 'earthtone' },
}
```

## Palette

Defined in `lua/earthtone/palette.lua`.

| Name | Hex | Role |
|------|-----|------|
| `bg` | `#e8dcc6` | Background |
| `terracotta` | `#7a4f3a` | Keywords |
| `moss` | `#5a6a4e` | Strings |
| `blue_stone` | `#3b5b5f` | Functions |
| `sage_green` | `#3a5b4d` | Types |
| `earth_brown` | `#907760` | Constants |
| `warm_amber` | `#a8814f` | Numbers |
| `charcoal` | `#5a4746` | Operators |
| `dusty_purple` | `#9b7d8a` | Macros |
| `coral` | `#c85552` | Errors |
| `honey` | `#c9a05a` | Warnings |
| `olive` | `#89a05d` | Success |

Override after loading:

```lua
vim.api.nvim_set_hl(0, 'Comment', { fg = '#8a9a8e', italic = true })
```

## Plugin support

blink.cmp, diffview, flash, fzf-lua, gitsigns, lazy, lualine, neo-tree, neotest, noice, nvim-dap/dap-ui, nvim-ufo, render-markdown, telescope, todo-comments, trouble, which-key, yanky

Full LSP support (semantic tokens, inlay hints, diagnostics) and treesitter coverage with per-language overrides for Rust, TypeScript/TSX, JavaScript, Go, Python, C/C++, Lua, Nix, Bash, HTML, CSS, JSON, YAML, and TOML.

## Development

```bash
just setup-hooks    # enable git hooks
just check          # selene + stylua + typos + actionlint
just validate       # test colorscheme loads in headless nvim
just fmt            # format lua
```

CI runs `just check` and `just validate` on push/PR via GitHub Actions.

## Requirements

Neovim >= 0.9.0

## License

MIT
