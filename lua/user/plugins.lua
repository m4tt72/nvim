local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

return packer.startup(function(use)
  -- plugins here
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  use 'lewis6991/impatient.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'akinsho/toggleterm.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'rmagatti/auto-session'
  use 'famiu/bufdelete.nvim'
  use 'akinsho/bufferline.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'p00f/nvim-ts-rainbow'
  use 'norcalli/nvim-colorizer.lua'
  use 'nathom/filetype.nvim'
  use 'dstein64/vim-startuptime'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'neoclide/coc.nvim', branch = 'release' }

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
