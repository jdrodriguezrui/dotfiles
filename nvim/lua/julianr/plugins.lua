-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- :so    :PackerSync
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Still don't know what Tresitter is
  use 'nvim-treesitter/nvim-treesitter'
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- Git highlighting
  use 'airblade/vim-gitgutter'

  use "EdenEast/nightfox.nvim"
  use 'morhetz/gruvbox'

  use 'hashivim/vim-terraform'
end)
