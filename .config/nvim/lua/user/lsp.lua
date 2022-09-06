-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').rust_analyzer.setup {
  capabilities = capabilities,
  on_attach = function()
    vim.keymap.set("n","<S-k>",vim.lsp.buf.hover, {buffer = 0})
    vim.keymap.set("n","gd",vim.lsp.buf.definition, {buffer = 0})
    vim.keymap.set("n","gt",vim.lsp.buf.type_definition, {buffer = 0})
    vim.keymap.set("n","gi",vim.lsp.buf.implementation, {buffer = 0})
    vim.keymap.set("n","<leader>df",vim.diagnostic.goto_next, {buffer = 0})
    vim.keymap.set("n","<leader>dp",vim.diagnostic.goto_prev, {buffer = 0})
    vim.keymap.set("n","<leader>rn",vim.lsp.buf.rename, {buffer = 0})
    vim.keymap.set("n","<leader>f",vim.lsp.buf.formatting, {buffer = 0})
  end,
}
