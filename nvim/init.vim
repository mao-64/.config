let mapleader =" "

call plug#begin('~/.local/sharh/nvim/plugged')

Plug 'neovim/nvim-lspconfig'

Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'

Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'

call plug#end()

"luafile ~/.config/nvim/compe-config.lua
source ~/.config/nvim/lsp-config.vim
luafile ~/.config/nvim/pyls-lsp.lua
luafile ~/.config/nvim/ccls-lsp.lua
luafile ~/.config/nvim/rust-lsp.lua

set completeopt=menuone,noselect

set number
set relativenumber
set incsearch
set tabstop=3
set colorcolumn=100

set cursorline
set cursorcolumn

colorscheme onedark
set termguicolors

syntax on

" let g:python3_host_prog = '/usr/bin/python3'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

highlight link CompeDocumentation NormalFloat

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:netrw_banner =0
