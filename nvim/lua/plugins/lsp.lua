return {
   {
       "mason-org/mason-lspconfig.nvim",
       opts = {},
       dependencies = {
           { "mason-org/mason.nvim", opts = {} },
           "neovim/nvim-lspconfig",
       },
   },
   "hrsh7th/nvim-cmp",
   "hrsh7th/cmp-buffer",
   "hrsh7th/cmp-path",
   "hrsh7th/cmp-nvim-lsp",
   {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v2.x", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!:).
      -- run = "make install_jsregexp"
   },
   "saadparwaiz1/cmp_luasnip",
   "rafamadriz/friendly-snippets"
}
