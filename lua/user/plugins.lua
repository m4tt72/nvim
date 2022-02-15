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
  use 'airblade/vim-gitgutter'
  -- use 'akinsho/bufferline.nvim'
  use 'gruvbox-community/gruvbox'
  use { 'kyazdani42/nvim-tree.lua', commit="3f4ed9b6c2598ab8304186486a0" }
  use 'kyazdani42/nvim-web-devicons'
  use 'lewis6991/impatient.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'wbthomason/packer.nvim'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
