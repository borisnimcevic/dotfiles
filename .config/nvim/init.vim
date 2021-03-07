filetype plugin indent on

" Allows for project specific .nvimrc
" It also needs to be in this file to work, unfortunately can't have it
" in sets.vim
set exrc
set secure

let mapleader = " "

call plug#begin('~/.vim/plugged')
" Colors
Plug 'frazrepo/vim-rainbow'
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
" Navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
" Inserting comments
Plug 'tpope/vim-commentary'
" Helps with syntax
Plug 'sheerun/vim-polyglot'
" Highlight what you've just yanked
Plug 'machakann/vim-highlightedyank'
" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Debugging
Plug 'puremourning/vimspector'
" Git
Plug 'tpope/vim-fugitive'
call plug#end()

"============================================"
" Setup that didn't require a different file "
"============================================"

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" Highlight-Yank settings
let g:highlightedyank_highlight_duration = 300
" Fuzzy find for files under .git document
nnoremap <C-p> :GFiles<CR>

nnoremap <leader>l :vs<CR> <BAR> :GFiles<CR>
