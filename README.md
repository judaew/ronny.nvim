<div align="center">

# ronny.nvim

</div>

ronny.nvim is a dark colorscheme for [Neovim](https://github.com/neovim/neovim), which mostly was inspired by the Monokai originally created by Wimem Hazenberg.

![ronny.nvim](preview/ronny.png)

## Installation

Install via package manager (e.g. [packer.nvim](https://github.com/wbthomason/packer.nvim) or [lazy.nvim](https://github.com/folke/lazy.nvim)):

```lua
-- packer.nvim:
use "judaew/ronny.nvim"
vim.cmd.colorscheme("ronny")

-- lazy.nvim:
{
    "judaew/ronny.nvim",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("ronny")
        require("ronny").setup({})
    end,
},
```

## Usage

```lua
require("ronny").setup({
    display = {
        -- Enable original Monokai colors
        monokai_original  = false,
        -- Highlight only LineNr (current line number) for cursorline
        -- option. This also enables cursorline (:set cursorline)
        only_CursorLineNr = true,
        -- Highlight LineNr for relativenumbers. This also enables
        -- relativenumbers option (:set relativenumbers)
        hi_relativenumber = false,
        -- Highlight unfocused windows when using :split or :vsplit
        hi_unfocus_window = false,
        -- Highlight formatted @text (e.g., italic, strong) in yellow
        -- in addition to font attributes to make the text more visible
        hi_formatted_text = true
    }
})
```

Additional optional config can be located in [config.lua](lua/ronny/config.lua).

## Supported Plugins

- [x] [LSP](https://github.com/neovim/nvim-lspconfig)/[Diagnostics](https://neovim.io/doc/user/diagnostic.html)
  ![Diagnostic](preview/diagnostic.png)
- [x] [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [x] [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  ![telescope](preview/telescope.png)
- [x] [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
  ![nvimtree](preview/nvimtree.png)
- [x] [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) and [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- [ ] [Conquer of Completion (coc.nvim)](https://github.com/neoclide/coc.nvim)
  ![nvim-cmp](preview/nvim-cmp.png)
- [x] [Which Key](https://github.com/folke/which-key.nvim)
- [x] [Git Gutter](https://github.com/airblade/vim-gitgutter) and [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [x] [Lualine](https://github.com/hoob3rt/lualine.nvim)
  ![Lualine](preview/lualine.png)
- [ ] [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [ ] [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [x] [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)

## Extra folder

- [kitty](https://sw.kovidgoyal.net/kitty/) color scheme, [go](extra/kitty/ronny.conf).

## Something is broken but I know how to fix it!

Pull requests and issues are welcome! Feel free to send one with an explanation!
