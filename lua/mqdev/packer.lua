vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({"Alexis12119/nightly.nvim", as = "nightly", config = function() vim.cmd('colorscheme nightly') end })
	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'nvim-treesitter/playground'
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}
	use 'mbbill/undotree'

  use 'nvim-lualine/lualine.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use 'tpope/vim-fugitive'         -- Git Commands in vim
  use 'airblade/vim-gitgutter'     -- Git file status
    
  -- OverAll Functionality Plugins
  use {'neoclide/coc.nvim', branch = 'release'}  -- Auto Completion
  use 'mg979/vim-visual-multi'     -- Multi Cursor ctrl + n 
  use 'jiangmiao/auto-pairs'       -- Auto closes brackets and quotes
  use 'alvan/vim-closetag'         -- Auto closes html tags
  use '907th/vim-auto-save'        -- Autosaves files
  use 'github/copilot.vim'         -- Copilot Plugin
  use 'kassio/neoterm'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    requires = { 'nvim-treesitter/nvim-treesitter' },
  }
  
  -- Misc
   use 'preservim/tagbar'           -- Tagbar for code navigation

  -- Coding Helpers
  use 'lifepillar/pgsql.vim'       -- PSQL Plugin
  use 'mlaursen/vim-react-snippets'-- React snippets
end)
