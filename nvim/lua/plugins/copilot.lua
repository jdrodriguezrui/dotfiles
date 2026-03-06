return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
      { "github/copilot.vim",
        -- Disable copilot ghost text and tab autocompletion
        config = function()
          vim.g.copilot_enabled = 0
          vim.g.copilot_no_tab_map = true
          vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })
        end,
      },
    },
    build = "make tiktoken",
    opts = {
      mappings = {
        file = "<leader>cf",
      },
    },
  },
}
