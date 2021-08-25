call plug#begin('~/.local/sharh/nvim/plugged')

Plug 'neovim/nvim-lspconfig'

Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'vimwiki/vimwiki'
Plug 'lambdalisue/fern.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'

Plug 'tpope/vim-surround'

Plug 'liuchengxu/vim-which-key'

Plug 'mhinz/vim-startify'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'

Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'


call plug#end()
