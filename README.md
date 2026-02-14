# earthtone.nvim

A warm, natural light colorscheme for Neovim — designed to be easy on the eyes during long coding sessions.

## Why earthtone?

Most light themes use high-saturation blues, purples, and greens pulled from digital color spaces. They look crisp at first but cause eye strain after hours of use. The problem is contrast — sharp synthetic hues against bright white backgrounds create a vibrating, harsh reading experience.

earthtone takes a different approach. Every color is derived from natural materials — terracotta, sage, sandstone, moss, driftwood, river stone. These are colors our eyes evolved to process comfortably in daylight. The warm parchment background (`#e8dcc6`) reduces blue light emission compared to pure white, while the muted, earthy syntax colors maintain clear distinction without competing for attention.

The result: code that reads like ink on paper, not pixels on a screen.

### Design principles

- **Warm parchment background** instead of stark white — reduces glare and blue light
- **Low-saturation earth tones** for syntax — terracotta keywords, moss strings, stone operators
- **Natural contrast ratios** — enough to read clearly, not enough to fatigue
- **Distinct but harmonious** — every color pair was chosen to feel like it belongs together
- **Rust-specific tuning** — dedicated warm brown palette for Rust's rich syntax

## Screenshots

<!-- TODO: add screenshots -->

## Installation

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

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'vaporif/earthtone.nvim',
  config = function()
    vim.cmd.colorscheme('earthtone')
  end,
}
```

## Lualine

earthtone ships with a matching lualine theme. It loads automatically if you set:

```lua
require('lualine').setup {
  options = { theme = 'earthtone' },
}
```

## Palette

All colors are named and defined in a single palette module (`lua/earthtone/palette.lua`). No magic hex values in highlight definitions.

### Backgrounds

| Name | Hex | Usage |
|------|-----|-------|
| `bg` | `#e8dcc6` | Main background — warm parchment |
| `bg_dim` | `#f8f1de` | Sidebar, statusline, subtle panels |
| `bg_cursor` | `#faf3e8` | Cursor line |
| `bg_float` | `#f0e8d4` | Floating windows |
| `bg_visual` | `#d5c9b8` | Visual selection |
| `bg_search` | `#e8d8a8` | Search highlight |

### Syntax

| Name | Hex | Usage |
|------|-----|-------|
| `terracotta` | `#7a4f3a` | Keywords — warm clay |
| `moss` | `#5a6a4e` | Strings — forest floor |
| `blue_stone` | `#3b5b5f` | Functions — deep water |
| `sage_green` | `#3a5b4d` | Types — living green |
| `earth_brown` | `#907760` | Constants — dry earth |
| `warm_amber` | `#a8814f` | Numbers — sunlit amber |
| `charcoal` | `#5a4746` | Operators — burnt wood |
| `dusty_purple` | `#9b7d8a` | Macros, imports — heather |
| `clay` | `#7a5a4a` | Parameters — wet clay |
| `bark` | `#7a6d5b` | Builtin functions — old bark |
| `driftwood` | `#8a8275` | Builtin variables — weathered wood |

### Accents

| Name | Hex | Usage |
|------|-----|-------|
| `coral` | `#c85552` | Errors, exceptions |
| `honey` | `#c9a05a` | Warnings |
| `sage` | `#708c7e` | Info, hints, TODO |
| `storm_blue` | `#6b8b8f` | Hints, links |
| `olive` | `#89a05d` | Success, additions |
| `brick` | `#b85450` | Deletions |
| `warm_orange` | `#c08563` | Search, special |

## Supported plugins

- [blink.cmp](https://github.com/saghen/blink.cmp) (completion + pairs)
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [neotest](https://github.com/nvim-neotest/neotest)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) + [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [yanky.nvim](https://github.com/gbprod/yanky.nvim)

### LSP

Full LSP support including:
- Semantic token highlighting for all standard token types
- Document highlight (reference read/write with distinct backgrounds)
- Inlay hints (muted, ambient)
- Signature help (active parameter underline)
- Code lens
- Diagnostics (signs, virtual text, underlines, floating windows)

### Treesitter

Complete treesitter highlight coverage:
- All `@variable`, `@function`, `@keyword`, `@type`, `@string`, `@constant` groups
- Markup groups for markdown rendering
- HTML/JSX tag support
- Diff highlights
- Language-specific overrides for Rust

## Customizing

The palette is a plain Lua table. You can override colors after loading:

```lua
{
  'vaporif/earthtone.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('earthtone')
    -- Override specific highlights after loading
    vim.api.nvim_set_hl(0, 'Comment', { fg = '#8a9a8e', italic = true })
  end,
}
```

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled (set automatically by the theme)

## License

MIT
