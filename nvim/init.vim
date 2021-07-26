let mapleader =" "

source ~/.config/nvim/plugconfig/plugins.vim
"
"luafile ~/.config/nvim/compe-config.lua
source ~/.config/nvim/lsp-config.vim
luafile ~/.config/nvim/pyls-lsp.lua
luafile ~/.config/nvim/ccls-lsp.lua
luafile ~/.config/nvim/rust-lsp.lua
luafile ~/.config/nvim/bash-lsp.lua


set completeopt=menuone,noselect

set nowrap
set number
set relativenumber
set incsearch
set tabstop=3
set colorcolumn=80,100

set cursorline
set cursorcolumn

let g:solarized_termcolors=256
colorscheme gruvbox
set termguicolors


let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }

set timeoutlen=100

let g:fern#default_hidden = 1

source ~/.config/nvim/plugconfig/airline.vim

source ~/.config/nvim/lsp/lsp.vim

"noremap <leader>n :Fern . -drawer -toggle<CR>

highlight link CompeDocumentation NormalFloat
highlight Normal guibg=none

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

source ~/.config/nvim/plugconfig/which-key.vim
source ~/.config/nvim/plugconfig/start-screen.vim
