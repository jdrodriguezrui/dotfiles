return {
   {
      'rcarriga/nvim-notify',
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
         require("notify").setup(opts)
         vim.notify = require('notify')
      end
   }
}
