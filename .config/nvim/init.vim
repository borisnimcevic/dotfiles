syntax on
filetype plugin indent on 

set exrc
set nocompatible
"set guicursor= 
set number
set relativenumber
set nohlsearch
set hidden
set noerrorbells visualbell t_vb=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
set nobackup
" This enables undoing the file even after it was closed.
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set noshowmode
set completeopt=menuone,noinsert,noselect
" highlight the entire line where the cursor is
set cursorline
"set path+=**
"set cmdheight=2

if !&scrolloff
  set scrolloff=2
endif

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey 
set signcolumn=yes

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Searching:
set ignorecase
set smartcase
set incsearch

" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop> 

" Enable mouse support.
set mouse+=a

let mapleader = " "

" Remaps:
nmap <Enter> o<Esc>| " new line 
nnoremap <C-p> :GFiles<CR>| " open fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'     
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-commentary'
"Plug 'zxqfl/tabnine-vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree' 
Plug 'christoomey/vim-tmux-navigator'
" Shows which lines were edited on the side
" Plug 'airblade/vim-gitgutter'
" Highlight what you've just yanked
Plug 'machakann/vim-highlightedyank'
call plug#end()

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
set background=dark
let g:gruvbox_contrast_light = 'hard'
"set background=light

let g:rainbow_active = 1


" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

" If a line wraps around moving up and down makes doesn't skip the whole line.
nnoremap j gj
nnoremap k gk

" Makes copping and pasing from outside the vim easier
set clipboard=unnamed
" Sort lines alphabetically
vnoremap <leader>s :'<,'>!sort -f<CR>
" Highlight-Yank settings
let g:highlightedyank_highlight_duration = 300

" coc settings:
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
