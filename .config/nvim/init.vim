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
set updatetime=300
set shortmess+=c

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

" Remove all trailing whire spaces
nnoremap <leader>w :%s/\s\+$//e<CR>

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

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" let g:lightline = {
"   \ 'colorscheme': 'wombat',
"   \ 'active': {
"   \   'left': [ [ 'mode', 'paste' ],
"   \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
"   \ },
"   \ 'component_function': {
"   \   'cocstatus': 'coc#status'
"   \ },
"   \ }

" " Use auocmd to force lightline update.
" autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
"

" Mappings for CoCList
" Search workspace symbols.
" I am not going to use the m for now, but could be useful in the future
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
