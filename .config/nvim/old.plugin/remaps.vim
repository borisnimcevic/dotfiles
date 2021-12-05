" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>
" Insert a blank line when press enter.
nmap <Enter> o<Esc>| " new line
" If a line wraps around, moving up and down is more natural. 
nnoremap j gj
nnoremap k gk
" Remove all trailing white spaces
nnoremap <leader>w :%s/\s\+$//e<CR>
" Sort lines alphabetically
vnoremap <leader>s :'<,'>!sort -f<CR>
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
" ctrl-s to save (add stty -ixon to ~/.bashrc required)
nnoremap <silent><c-s> :<c-u>update<cr>
inoremap <silent><c-s> <c-o>:update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
