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
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set noshowmode
set completeopt=menuone,noinsert,noselect
"set path+=**
"set cmdheight=2

if !&scrolloff
  set scrolloff=2
endif

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey 

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

" Remaps:
nmap <Enter> o<Esc>| " new line 
nnoremap <C-p> :GFiles<CR>| " open fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'     
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-commentary'
Plug 'zxqfl/tabnine-vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
set background=dark
let g:gruvbox_contrast_light = 'hard'
"set background=light

let g:rainbow_active = 1

" coc setup:
" enable autocompletion with TAB
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
