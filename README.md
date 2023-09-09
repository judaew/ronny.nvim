<h1 align="center">ronny.nvim</h1>

ronny.nvim is a dark colorscheme for [Neovim](https://github.com/neovim/neovim), which mostly was inspired by the Monokai originally created by Wimem Hazenberg.

![ronny.nvim](path_to_screenshot.png)

## Supported Plugins

- [x] [LSP](https://github.com/neovim/nvim-lspconfig)/[Diagnostics](https://neovim.io/doc/user/diagnostic.html)
- [x] [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [ ] [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [ ] [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [x] [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) and [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- [x] [Git Gutter](https://github.com/airblade/vim-gitgutter) and [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [ ] [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [x] [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [x] [Which Key](https://github.com/folke/which-key.nvim)

## Installation

Install via package manager (e.g. [packer.nvim](https://github.com/wbthomason/packer.nvim) or [lazy.nvim](https://github.com/folke/lazy.nvim)):

```lua
-- packer.nvim:
vim.cmd.colorscheme("ronny")
use "Mofiqul/vscode.nvim"

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
    colors = {
        syntax = {
            Comment = { fg="#7E8E91", bg="NONE" }
            -- ...
        }
        -- ...
    },
    display = {
        monokai_original = false,
        only_CursorLineNr = true,
        hi_relativenumber = false,
        hi_unfocus_window = false,
        hi_formatted_text = true
    }
})
```

## Extra folder

- [kitty](https://sw.kovidgoyal.net/kitty/) color scheme, [go](./extra/kitty/ronny.conf).

## Something is broken but I know how to fix it!

Pull requests and issues are welcome! Feel free to send one with an explanation!
