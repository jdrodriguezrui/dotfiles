-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- :so    :PackerSync
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'
   -- Tresitter
   use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
   }
   -- LSP
   use 'neovim/nvim-lspconfig'
   use 'williamboman/nvim-lsp-installer'
   -- Autocomplete
   use 'hrsh7th/nvim-cmp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-nvim-lsp'
   use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	-- run = "make install_jsregexp"
   })
   use("saadparwaiz1/cmp_luasnip")
   use("rafamadriz/friendly-snippets")
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
   use 'lewis6991/gitsigns.nvim'

   -- Scrollbar
   use("petertriho/nvim-scrollbar")
   -- hlslens (for scrollbar search results)
   use {'kevinhwang91/nvim-hlslens'}

   use "EdenEast/nightfox.nvim"
   use 'morhetz/gruvbox'

   -- Terraform highlighting (mostly)
   use 'hashivim/vim-terraform'
end)
