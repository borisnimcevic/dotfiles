filetype plugin indent on

let mapleader = " "

call plug#begin('~/.vim/plugged')
" Colors
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
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
" LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
" Telescope
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Plug 'nvim-telescope/telescope.nvim'
call plug#end()

"============================================"
" Setup that didn't require a different file "
"============================================"

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" Highlight-Yank settings
let g:highlightedyank_highlight_duration = 300

" nmap <silent> gd <Plug>(coc-definition)
