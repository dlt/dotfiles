return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		{ run =  ':TSUpdate'}
	}

	use {
		'RRethy/nvim-treesitter-endwise',
	}

	use {
		'nvim-tree/nvim-tree.lua',
	}

	use 'christoomey/vim-tmux-navigator'
	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use { "mfussenegger/nvim-dap" }
	use { "suketa/nvim-dap-ruby" }
	use { "nvim-neotest/nvim-nio"}
	use { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

	use { 'lewis6991/gitsigns.nvim' }

	use "rebelot/kanagawa.nvim"
	use 'm4xshen/autoclose.nvim'
end)
