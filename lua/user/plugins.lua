local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- plugins here
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'gruvbox-community/gruvbox'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'lewis6991/impatient.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/bufferline.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require'nvim-tree'.setup {} end
  }
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
