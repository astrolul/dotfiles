call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'

call plug#end()
filetype plugin on
filetype indent on
set number
syntax on
set cursorline
set nowrap
set shiftwidth=4
set tabstop=4
set incsearch
set nobackup
set smartcase
set showcmd
set showmatch
set hlsearch
set wildmenu
set wildmode=list:longest
colorscheme gruvbox
set background=dark
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 0
hi Normal guibg=NONE
hi Normal ctermbg=NONE
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeFileLines = 1
let g:NERDTreeShowHidden = 1
source ~/.config/nvim/coc-example-config.vim
