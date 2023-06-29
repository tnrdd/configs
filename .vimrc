unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
set mouse=
set ttymouse=
set number relativenumber
set number nu rnu
let g:zenburn_high_Constrast=1
let g:zenburn_italic_Comment=1
colorscheme zenburn
let mapleader = " "
inoremap kj <esc>
nnoremap <leader>w :w<CR>
filetype plugin indent on
syntax on
set encoding=utf-8
set autoindent expandtab tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.huff setfiletype huff
autocmd FileType huff setlocal noexpandtab shiftwidth=8 tabstop=8
autocmd FileType c setlocal noexpandtab shiftwidth=8 tabstop=8
let g:user_emmet_expandabbr_key='<C-z>'
let g:user_emmet_settings={'javascript': {'extends':'jsx'}, 'typescript': {'extends':'jsx'}}
packloadall
