local hl = vim.api.nvim_set_hl

local M = {}

function M.apply_syntax(table)
    for group, style in pairs(table) do
        local hl_group = {}

        if style.fg then
            hl_group.foreground = style.fg
        end

        if style.bg then
            hl_group.background = style.bg
        end

        if style.sp then
            hl_group.special = style.sp
        end

        if style.blend then
            hl_group.blend = style.blend
        end

        if style.bold then
            hl_group.bold = style.bold
        end

        if style.standout then
            hl_group.standout = style.standout
        end

        if style.underline then
            hl_group.underline = style.underline
        end

        if style.undercurl then
            hl_group.undercurl = style.undercurl
        end

        if style.underdouble then
            hl_group.underdouble = style.underdouble
        end

        if style.underdotted then
            hl_group.underdotted = style.underdotted
        end

        if style.underdashed then
            hl_group.underdashed = style.underdashed
        end

        if style.strikethrough then
            hl_group.strikethrough = style.strikethrough
        end

        if style.italic then
            hl_group.italic = style.italic
        end

        if style.reverse then
            hl_group.reverse = style.reverse
        end

        if style.nocombine then
            hl_group.nocombine = style.nocombine
        end

        if style.link then
            hl_group.link = style.link
        end

        hl(0, group, hl_group)
    end
end

return M
