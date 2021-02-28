filetype plugin indent on

let mapleader = " "

call plug#begin('~/.vim/plugged')
" Colors
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
" Navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
" Inserting comments
Plug 'tpope/vim-commentary'
" Helps with syntax
Plug 'sheerun/vim-polyglot'
" Highlight what you've just yanked
Plug 'machakann/vim-highlightedyank'
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
call plug#end()

"============================================"
" Setup that didn't require a different file "
"============================================"

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" Highlight-Yank settings
let g:highlightedyank_highlight_duration = 300

" Remaps:
nnoremap <C-p> :GFiles<CR>| " open fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

