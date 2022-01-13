return require('packer').startup({function()

--	use 'vimwiki/vimwiki'
	--use 'lambdalisue/fern.vim'

	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/completion-nvim'
	use 'hrsh7th/nvim-compe'

	use 'tpope/vim-surround'

	use 'liuchengxu/vim-which-key'
	
	use 'mhinz/vim-startify'

	use 'folke/tokyonight.nvim'
--	use 'morhetz/gruvbox'
	use 'ryanoasis/vim-devicons'

	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'nvim-telescope/telescope.nvim'

--	use 'tpope/vim-fugitive'

	use 'hoob3rt/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'

--	use 'kristijanhusak/orgmode.nvim'
--	use {'kristijanhusak/orgmode.nvim', branch = 'tree-sitter', config = function()
--        require('orgmode').setup{}
--	end
--	}
	
	use 'markonm/traces.vim'

use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
}

--	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

	use {
	    'nvim-treesitter/nvim-treesitter',
	    run = ':TSUpdate'
	}

	use { 'nvim-treesitter/playground' }

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
