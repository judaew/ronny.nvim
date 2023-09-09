local utils = require("ronny.utils")
local config = require("ronny.config")

local M = {}

function M.load()
    vim.o.termguicolors = true
    vim.g.colors_name = "ronny"
    vim.o.background="dark"

    utils.apply_syntax(config.colors.syntax)
    utils.apply_syntax(config.colors.builtin)
    utils.apply_syntax(config.colors.diagnostic)
end

function M.setup(user_config)
    config = config.update(user_config)

    local colors = config.colors
    local display = config.display
    local plugins = config.plugins
    local better_syntax = config.better_syntax

    local settings = {
        { display.monokai_original,  colors.monokai_original },
        { display.hi_unfocus_window, colors.hi_unfocus_window },
        { display.hi_formatted_text, colors.hi_formatted_text },
        { display.only_CursorLineNr, colors.only_CursorLineNr, { vim_options={"cursorline"}}},
        { display.hi_relativenumber, colors.hi_relativenumber, { vim_options={"relativenumber"}}},

        { plugins.treesitter,      colors.treesitter },
        { plugins.telescope,       colors.telescope },
        { plugins.nvimtree,        colors.nvimtree },
        { plugins.nvim_cmp,        colors.nvim_cmp },
        { plugins.whichkey,        colors.whichkey },
        { plugins.gitgutter,       colors.gitgutter },
        { plugins.gitsigns,        colors.gitsigns },
        { plugins.indentblankline, colors.indentblankline },

        { better_syntax.c,          colors.c },
        { better_syntax.cpp,        colors.cpp },
        { better_syntax.json,       colors.json },
        { better_syntax.html,       colors.html },
        { better_syntax.php,        colors.php },
        { better_syntax.css,        colors.css },
        { better_syntax.javascript, colors.javascript },
        { better_syntax.typescript, colors.typescript },
        { better_syntax.xml,        colors.xml },
        { better_syntax.ruby,       colors.ruby },
        { better_syntax.yaml,       colors.yaml },
        { better_syntax.sql,        colors.sql },
        { better_syntax.sh,         colors.sh },
        { better_syntax.lua,        colors.lua },
        { better_syntax.tex,        colors.tex },
        { better_syntax.python,     colors.python },
        { better_syntax.go,         colors.go },
        { better_syntax.markdown,   colors.markdown },
        { better_syntax.orgmode,    colors.orgmode },
    }

    for _, setting in ipairs(settings) do
        local condition, color, opts = table.unpack(setting)
        if condition then
            if opts then
                for _, option in ipairs(opts.vim_options) do
                    vim.o[option] = true
                end
            end

            utils.apply_syntax(color)
        end
    end
end

return M
