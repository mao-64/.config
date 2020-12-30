let mapleader =" "

call plug#begin('~/.local/sharh/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'
Plug 'arcticicestudio/nord-vim'

call plug#end()

set number
set relativenumber
set incsearch
set tabstop=3

colorscheme nord

syntax on

let g:python3_host_prog = '/usr/bin/python3.8'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-prettier',
	\ 'coc-tsserver',
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-json',
	\ 'coc-angular',
	\ 'coc-explorer',
	\ 'coc-vimtex'
	\ ]

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <leader>n :CocCommand explorer<CR>

