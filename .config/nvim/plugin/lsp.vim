" NOTE: if you have any color setup, like colorscheem (of course you do!),
" make sure that they happen before this section. Otherwise some colors, such
" as warnings and errors might not show as expected
set completeopt=menuone,noinsert,noselect
set shortmess+=c

lua << EOF
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

local on_attach = require'completion'.on_attach 
require'lspconfig'.clangd.setup{
    on_attach = on_attach, 
    root_dir = function() return vim.loop.cwd() end 
}
require'lspconfig'.cmake.setup{on_attach=on_attach}
require'lspconfig'.pyls.setup{on_attach=on_attach}
require'lspconfig'.vimls.setup{on_attach=on_attach}
EOF


" Clangd specific
nnoremap <leader>h :ClangdSwitchSourceHeader<CR>

" Completion setup
" Scroll throught suggested completions with Tab
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completion_matching_ignore_case = 1
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_trigger_on_delete = 1

" LSP Mappings
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
" Format what was selected in the visual mode
vnoremap <leader>f <Cmd>lua vim.lsp.buf.range_formatting()<CR>
" Format the whole file
nnoremap <leader>ff <Cmd>lua vim.lsp.buf.formatting()<CR>
