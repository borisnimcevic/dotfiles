filetype plugin indent on

let mapleader = " "

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
" Highlight what you've just yanked
Plug 'machakann/vim-highlightedyank'
Plug 'tomasiser/vim-code-dark'
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

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remaps:
nnoremap <C-p> :GFiles<CR>| " open fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

