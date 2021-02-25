set exrc
set nocompatible
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
set updatetime=50
set shortmess+=c
set colorcolumn=80
set signcolumn=yes
" Enable mouse support.
set mouse+=a
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start
" Searching
set ignorecase
set smartcase
set incsearch
" Always show the status line at the bottom. 
" Even if you only have one window open.
set laststatus=2
" Minimum number of screen lines too keep above and belowthe cursor.
if !&scrolloff
  set scrolloff=2
endif
" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬
" Makes copping and pasing from outside the vim easier
set clipboard=unnamed
" set spell checking language
set nospell spelllang=en_us
