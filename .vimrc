set clipboard=unnameplus
:set number relativenumber
:set number nu rnu
let g:zenburn_high_Constrast=1
let g:zenburn_italic_Comment=1
colorscheme zenburn
let mapleader = " "
inoremap kj <esc>
nnoremap <leader>w :w<CR>
filetype plugin indent on
syntax on
set encoding=utf-8
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
let g:user_emmet_expandabbr_key='<C-z>'
let g:user_emmet_settings={'javascript': {'extends':'jsx'}, 'typescript': {'extends':'jsx'}}
packloadall
let g:prettier#config#use_tabs = 'false'
