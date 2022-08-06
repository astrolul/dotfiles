call plug#begin()

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'

call plug#end()

set number
set laststatus=2
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
syntax on
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
