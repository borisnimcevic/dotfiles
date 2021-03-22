" Code Dark:
" colorscheme codedark
let g:airline_theme = 'codedark'

" Gruvbox:
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
set background=dark
" let g:gruvbox_contrast_light = 'hard'
" set background=light
"
" Used it to debug slow nvim. I am not sure it is completely fixed so I will
" keep it for now.
nnoremap <silent> <Leader>y
             \ : if exists("syntax_on") <BAR>
             \    syntax off <BAR>
             \ else <BAR>  
             \    syntax enable <BAR>
             \ endif<CR>  

" Rainbow
let g:rainbow_active = 0
nnoremap <leader>r :RainbowToggle<CR>
