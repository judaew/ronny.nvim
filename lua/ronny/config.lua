local colors = require("ronny.colors")

local M = {}

M = {
    colors = colors,
    display = {
        monokai_original = false,
        only_CursorLineNr = true,
        hi_relativenumber = false,
        hi_unfocus_window = false,
        hi_formatted_text = true
    }
}

function M.update(opts)
    M = vim.tbl_deep_extend("force", M, opts)
    return M
end

return M
