require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Color Scheme and Syntax {{{
	use 'dracula/vim'
	use {
		'nvim-lualine/lualine.nvim',
		 requires = { 'kyazdani42/nvim-web-devicons' },
	}
	use {
    	'nvim-treesitter/nvim-treesitter',
    	 run = ':TSUpdate',
	}
	-- }}}
	-- File Management and CLI {{{
	--use 'preservim/nerdtree' 
	use {
			'nvim-tree/nvim-tree.lua',
  		 requires = {
    		'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		 },
  		 tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use 'mhinz/vim-startify'
	use {
		'francoiscabrol/ranger.vim',
		 requires = {'rbgrouleff/bclose.vim'},
	}
	use {
  		'nvim-telescope/telescope.nvim',
		 tag = '0.1.0',
  		 requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use {
		'akinsho/toggleterm.nvim',
		 tag = 'v2.*',
	}
	-- }}}
	-- Git Integration {{{
	use {
	  'lewis6991/gitsigns.nvim',
  	  config = function() require('gitsigns').setup() end,
	}
	use 'tpope/vim-fugitive'
	-- }}}
	-- IDE for C/C++/Rust {{{
	use 'preservim/tagbar'
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',
			'hrsh7th/vim-vsnip-integ',
		},
	}
	use {
		'simrat39/rust-tools.nvim',
		 requires = {
			'neovim/nvim-lspconfig',
			-- Debugging
			use 'nvim-lua/plenary.nvim',
			use 'mfussenegger/nvim-dap',
		 }
	}
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end,
	}
	use 'RRethy/nvim-align'
	-- }}}
	-- Note {{{
	use 'vimwiki/vimwiki'
	use{
		"iamcco/markdown-preview.nvim",
		 run = "cd app && npm install",
		 setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		 ft = { "markdown" },
	}
	use 'mzlogin/vim-markdown-toc'
	use {
		'weirongxu/plantuml-previewer.vim',
		 requires = {'tyru/open-browser.vim','aklt/plantuml-syntax'}
	}
	
	use 'vim-scripts/DrawIt'
	-- }}}
end)

require('setup')
require('automation')
require('mapping')
require('syc_tools')
