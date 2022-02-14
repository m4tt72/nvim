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
  use 'L3MON4D3/LuaSnip'
  use 'airblade/vim-gitgutter'
  use 'akinsho/bufferline.nvim'
  use 'gruvbox-community/gruvbox'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'lewis6991/impatient.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'saadparwaiz1/cmp_luasnip'
  use 'tamago324/nlsp-settings.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'wbthomason/packer.nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'windwp/nvim-autopairs'
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
