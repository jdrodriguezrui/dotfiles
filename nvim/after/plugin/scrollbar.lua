require("scrollbar").setup({
   handlers = {
      cursor = true,
      diagnostic = false,
      gitsigns = true, -- Requires gitsigns
      handle = true,
      search = true, -- Requires hlslens
      ale = false, -- Requires ALE
   }
})
