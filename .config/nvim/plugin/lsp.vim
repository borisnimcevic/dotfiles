" NOTE: if you have any color setup, like colorscheem (of course you do!),
" make sure that they happen before this section. Otherwise some colors, such
" as warnings and errors might not show as expected
set completeopt=menuone,noinsert,noselect
set shortmess+=c

lua << EOF
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

" Scroll throught suggested completions with Tab
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_on_delete = 1
