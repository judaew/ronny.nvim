-- vim:foldenable foldmethod=marker:

-- Install and initialize lazy.nvim {{{
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
-- }}}

require("lazy").setup({
    {
        "judaew/ronny.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("ronny")
            require("ronny").setup()
        end
    },

    -- lualine.nvim is optional
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons", opts = true
        },
	config = function() require("lualine").setup() end
    }
})
