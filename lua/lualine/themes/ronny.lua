-- Copyright (c) 2023 Vadym-Valdis Yudaiev
-- MIT license, see LICENSE for more details.

local colors = require("ronny.colors")
local pal = colors.palette
pal.a_fg = pal.black
pal.b_fg = pal.bright_white
pal.b_bg = "#585858"
pal.c_fg = pal.bright_white
pal.c_bg = "#343434"

local M = {}

M.normal = {
    a = { fg=pal.a_fg, bg=pal.bright_cyan, gui="bold" },
    b = { fg=pal.b_fg, bg=pal.b_bg },
    c = { fg=pal.c_fg, bg=pal.c_bg }
}

M.visual = {
    a = { fg=pal.a_fg, bg=pal.bright_yellow, gui="bold" },
    b = { fg=pal.b_fg, bg=pal.b_bg },
    c = { fg=pal.c_fg, bg=pal.c_bg }
}

M.inactive = {
    a = { fg=pal.a_fg, bg=pal.gray, gui="bold" },
    b = { fg=pal.b_fg, bg=pal.b_bg },
    c = { fg=pal.c_fg, bg=pal.c_bg }
}

M.replace = {
    a = { fg=pal.a_fg, bg=pal.bright_red, gui="bold" },
    b = { fg=pal.b_fg, bg=pal.b_bg },
    c = { fg=pal.c_fg, bg=pal.c_bg }
}

M.insert = {
    a = { fg=pal.a_fg, bg=pal.bright_green, gui="bold" },
    b = { fg=pal.b_fg, bg=pal.b_bg },
    c = { fg=pal.c_fg, bg=pal.c_bg }
}

M.terminal = {
    a = { fg=pal.a_fg, bg=pal.bright_green, gui="bold" },
    b = { fg=pal.b_fg, bg=pal.b_bg },
    c = { fg=pal.c_fg, bg=pal.c_bg }
}

M.command = {
    a = { fg=pal.a_fg, bg=pal.bright_cyan, gui="bold" },
    b = { fg=pal.b_fg, bg=pal.b_bg },
    c = { fg=pal.c_fg, bg=pal.c_bg }
}

return M
