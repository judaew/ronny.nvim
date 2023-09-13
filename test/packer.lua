-- vim:foldenable foldmethod=marker:

-- Install and initialize packer.nvim {{{
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- }}}

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use {
        "judaew/ronny.nvim",
        config = function()
            vim.cmd.colorscheme("ronny")
            require("ronny").setup()
        end
    }

    -- lualine.nvim is optional
    use {
        "nvim-lualine/lualine.nvim",
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require("lualine").setup() end
    }
    if packer_bootstrap then
        require('packer').sync()
    end
end)
