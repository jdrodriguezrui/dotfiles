local nnoremap = require("julianr.keymap").nnoremap

local opts = { noremap=true, silent=true }
nnoremap('<space>e', vim.diagnostic.open_float, opts)
nnoremap('[d', vim.diagnostic.goto_prev, opts)
nnoremap(']d', vim.diagnostic.goto_next, opts)
nnoremap('<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  nnoremap('gD', vim.lsp.buf.declaration, bufopts)
  nnoremap('gd', vim.lsp.buf.definition, bufopts)
  nnoremap('K', vim.lsp.buf.hover, bufopts)
  nnoremap('gi', vim.lsp.buf.implementation, bufopts)
  nnoremap('<C-k>', vim.lsp.buf.signature_help, bufopts)
  nnoremap('<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  nnoremap('<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  nnoremap('<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  nnoremap('<space>D', vim.lsp.buf.type_definition, bufopts)
  nnoremap('<space>rn', vim.lsp.buf.rename, bufopts)
  nnoremap('<space>ca', vim.lsp.buf.code_action, bufopts)
  nnoremap('gr', vim.lsp.buf.references, bufopts)
  nnoremap('<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_defaults = require('lspconfig').util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require('nvim-lsp-installer').setup {}

require('lspconfig').bashls.setup{
   on_attach = on_attach,
   flags = lsp_flags
}

require('lspconfig')['yamlls'].setup{
   on_attach = on_attach,
   flags = lsp_flags,
}

require('lspconfig')['groovyls'].setup{
   on_attach = on_attach,
   flags = lsp_flags,
}

require('lspconfig')['tflint'].setup{
   on_attach = on_attach,
   flags = lsp_flags,
}

require('lspconfig')['pyright'].setup{
   on_attach = on_attach,
   flags = lsp_flags,
}
