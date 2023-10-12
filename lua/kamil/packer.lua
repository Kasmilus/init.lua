-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --Alternatively: darcula
  use({
	  'doums/darcula', 
	  as = 'darcula' ,
	  config = function()
		  vim.cmd('colorscheme darcula')
	  end
  })
  --use({
  --        'rose-pine/neovim', 
  --        as = 'rose-pine' ,
  --        config = function()
  --      	  vim.cmd('colorscheme rose-pine')
  --        end
  --})

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/nvim-treesitter-context')
  use('nvim-treesitter/nvim-treesitter-refactor')
  require'nvim-treesitter.configs'.setup {
  }

  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- Devicons 
  use('kyazdani42/nvim-web-devicons')

  -- Tabline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Tags
  use('ludovicchabant/vim-gutentags')

  -- Autocompletion
  use('ervandew/supertab')

  -- Switch between cpp/header files
  use {
      'jakemason/ouroboros',
      requires = { {'nvim-lua/plenary.nvim'} }
  }


end)

