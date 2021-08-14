vim.wo.number = true
vim.wo.relativenumber = true
vim.o.incsearch = true
vim.wo.list = true
vim.bo.tabstop = 3
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.o.timeoutlen = 500
vim.o.wrap = false
vim.wo.colorcolumn = "80,100"

vim.cmd [[
let mapleader =" "

source ~/.config/nvim/plugconfig/plugins.vim
source ~/.config/nvim/lua/mao/lsp/lsp-config.vim
source ~/.config/nvim/plugconfig/which-key.vim
source ~/.config/nvim/plugconfig/start-screen.vim
source ~/.config/nvim/lua/mao/lsp/lsp.vim

set completeopt=menuone,noselect

set shiftwidth=0 noexpandtab

set clipboard+=unnamedplus

let g:solarized_termcolors=256
colorscheme gruvbox
set termguicolors

let g:fern#default_hidden = 1

highlight link CompeDocumentation NormalFloat
highlight Normal guibg=none

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Left> :vertical resize +5<CR>
map <Right> :vertical resize -5<CR>

nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-j> :m '>+1<CR>gv=gv
]]


require "mao.telescope"

require "mao.lsp"
