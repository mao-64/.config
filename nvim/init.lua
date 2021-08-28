vim.wo.number = true
vim.wo.relativenumber = true
vim.o.incsearch = true
vim.wo.list = true
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.o.timeoutlen = 500
vim.o.wrap = false
vim.g.smarttab = true

require "mao.packer"

require "mao.telescope"

require "mao.lsp"

require "mao.luailne"

require "mao.colors"

vim.cmd [[
source ~/.config/nvim/lua/mao/lsp/lsp-config.vim
source ~/.config/nvim/plugconfig/which-key.vim
source ~/.config/nvim/plugconfig/start-screen.vim
source ~/.config/nvim/lua/mao/lsp/lsp.vim
source ~/.config/nvim/keybins.vim

set completeopt=menuone,noselect

set shiftwidth=0 noexpandtab

set clipboard+=unnamedplus

set tabstop=3

let g:fern#default_hidden = 1
]]

