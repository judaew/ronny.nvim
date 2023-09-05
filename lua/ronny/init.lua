local utils = require("ronny.utils")
local config = require("ronny.config")

local M = {}

function M.setup(user_config)
    config = config.update(user_config)

    if config.display.monokai_original then
        utils.apply_syntax(config.colors.monokai_original)
    end

    if config.display.only_CursorLineNr then
        vim.o.cursorline = true
        utils.apply_syntax(config.colors.only_CursorLineNr)
    end

    if config.display.hi_relativenumber then
        vim.o.relativenumber = true
        utils.apply_syntax(config.colors.hi_relativenumber)
    end

    if config.display.hi_unfocus_window then
        utils.apply_syntax(config.colors.hi_unfocus_window)
    end

    if config.display.hi_formatted_text then
        utils.apply_syntax(config.colors.hi_formatted_text)
    end
end

function M.load()
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "ronny"

    -- ronny support only dark now
    vim.o.background="dark"
    -- vim.o.background = style or config.opts.style or vim.o.background

    utils.apply_syntax(config.colors.syntax)
    utils.apply_syntax(config.colors.builtin)
    utils.apply_syntax(config.colors.whichkey)
    utils.apply_syntax(config.colors.gitgutter)
    utils.apply_syntax(config.colors.gitsigns)
    utils.apply_syntax(config.colors.nvim_cmp)
    utils.apply_syntax(config.colors.c)
    utils.apply_syntax(config.colors.cpp)
    utils.apply_syntax(config.colors.json)
    utils.apply_syntax(config.colors.html)
    utils.apply_syntax(config.colors.treesitter)
    utils.apply_syntax(config.colors.php)
    utils.apply_syntax(config.colors.css)
    utils.apply_syntax(config.colors.javascript)
    utils.apply_syntax(config.colors.typescript)
    utils.apply_syntax(config.colors.xml)
    utils.apply_syntax(config.colors.ruby)
    utils.apply_syntax(config.colors.yaml)
    utils.apply_syntax(config.colors.sql)
    utils.apply_syntax(config.colors.sh)
    utils.apply_syntax(config.colors.lua)
    utils.apply_syntax(config.colors.tex)
    utils.apply_syntax(config.colors.python)
    utils.apply_syntax(config.colors.go)
    utils.apply_syntax(config.colors.markdown)
    utils.apply_syntax(config.colors.orgmode)
end

return M
