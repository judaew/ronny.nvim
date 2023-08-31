local colors = require("ronny.colors")
local utils = require("ronny.utils")

local M = {}

-- function M.setup()
-- end

function M.load(style)
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "ronny"

    -- ronny support only dark now
    vim.o.background="dark"
    -- vim.o.background = style or config.opts.style or vim.o.background

    utils.apply_syntax(colors.syntax)
    utils.apply_syntax(colors.builtin)
    utils.apply_syntax(colors.whichkey)
    utils.apply_syntax(colors.gitgutter)
    utils.apply_syntax(colors.gitsigns)
    utils.apply_syntax(colors.nvim_cmp)
    utils.apply_syntax(colors.c)
    utils.apply_syntax(colors.cpp)
    utils.apply_syntax(colors.json)
    utils.apply_syntax(colors.html)
    utils.apply_syntax(colors.treesitter)
    utils.apply_syntax(colors.php)
    utils.apply_syntax(colors.css)
    utils.apply_syntax(colors.javascript)
    utils.apply_syntax(colors.typescript)
    utils.apply_syntax(colors.xml)
    utils.apply_syntax(colors.ruby)
    utils.apply_syntax(colors.yaml)
    utils.apply_syntax(colors.sql)
    utils.apply_syntax(colors.sh)
    utils.apply_syntax(colors.lua)
    utils.apply_syntax(colors.tex)
    utils.apply_syntax(colors.python)
    utils.apply_syntax(colors.go)
end

return M
