filetype plugin indent on

" Allows for project specific .nvimrc
" It also needs to be in this file to work, unfortunately can't have it
" in sets.vim
set exrc
set secure

let mapleader = " "

call plug#begin('~/.vim/plugged')
" Colors
Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/lightline.vim'
" Navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'wellle/targets.vim'
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

" Navigation
nnoremap <leader>l :vs<CR> <BAR> <C-w>l <BAR> :GFiles<CR>
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeToggle<CR>

" Highlight-Yank settings
let g:highlightedyank_highlight_duration = 300

" Fuzzy find for files under .git document
nnoremap <C-p> :GFiles<CR>

