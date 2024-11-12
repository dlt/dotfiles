local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
	-- Packer can manage itself
	'wbthomason/packer.nvim';

	"rebelot/kanagawa.nvim";
	'm4xshen/autoclose.nvim';

	{
	    'nvim-telescope/telescope.nvim', tag = '0.1.8',
	    -- or                            , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }
    	};

	{
	    "rose-pine/neovim",
	    as = "rose-pine",
	    config = function()
	    	vim.cmd("colorscheme rose-pine")
	    end
	};

	{
	    'nvim-treesitter/nvim-treesitter',
	    { run =  ':TSUpdate'}
	};

	{
	    'RRethy/nvim-treesitter-endwise',
	};

	{
	    'nvim-tree/nvim-tree.lua',
	};

	'christoomey/vim-tmux-navigator';
	{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'};
	{'neovim/nvim-lspconfig'};
	{'hrsh7th/nvim-cmp'};
	{'hrsh7th/cmp-nvim-lsp'};
	{ "williamboman/mason.nvim", };
	{ "williamboman/mason-lspconfig.nvim" };
	{ "neovim/nvim-lspconfig" };
	{ "mfussenegger/nvim-dap" };
	{ "suketa/nvim-dap-ruby" };
	{ "nvim-neotest/nvim-nio"};
	{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} };

	{ 'lewis6991/gitsigns.nvim' };
}
