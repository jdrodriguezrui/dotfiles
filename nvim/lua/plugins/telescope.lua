return {
   {
      'nvim-telescope/telescope.nvim', version = 'v0.2.x',
      dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-ui-select.nvim' },
      opts = {
         defaults = {
            mappings = {
               i = {
                  ["<M-f>"] = false,
                  ["<M-k>"] = false
               }
            }
         }
      },
      config = function(_, opts)
         require("telescope").setup(opts)
         require("telescope").load_extension("ui-select")
      end
   },
   {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
}
