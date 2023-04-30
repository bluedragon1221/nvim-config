-- vim: sw=2
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'rose-pine/neovim',
    	as = 'rose-pine',
    	config = function()
        	vim.cmd.colorscheme('rose-pine')
    	end
  }

  use "bluedragon1221/litmark.nvim"

  use "baskerville/vim-sxhkdrc"

  use 'lukas-reineke/headlines.nvim'

  use 'nvim-treesitter/playground'

  use { 'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end
  }

  use { 'echasnovski/mini.tabline',
    config = function()
      require('mini.tabline').setup()
    end }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use { 'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)
