local colors = require("ronny.colors")
local utils = require("ronny.utils")

local M = {}

-- function M.setup()
-- end

function M.load(style)
    vim.cmd("hi clear")
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
end

return M
