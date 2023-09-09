local colors = require("ronny.colors")

local M = {}

M = {
    colors = colors,
    -- TODO: italic comments
    display = {
        monokai_original  = false,
        only_CursorLineNr = true,
        hi_relativenumber = false,
        hi_unfocus_window = false,
        hi_formatted_text = true
    },
    plugins = {
        treesitter      = true,
        telescope       = true,
        nvimtree        = true,
        nvim_cmp        = true,
        whichkey        = true,
        gitgutter       = true,
        gitsigns        = true,
        indentblankline = true,
    },
    better_syntax = {
        c          = true,
        cpp        = true,
        json       = true,
        html       = true,
        php        = true,
        css        = true,
        javascript = true,
        typescript = true,
        xml        = true,
        ruby       = true,
        yaml       = true,
        sql        = true,
        sh         = true,
        lua        = true,
        tex        = true,
        python     = true,
        go         = true,
        markdown   = true,
        orgmode    = true,
    }
}

function M.update(opts)
    M = vim.tbl_deep_extend("force", M, opts)
    return M
end

return M
