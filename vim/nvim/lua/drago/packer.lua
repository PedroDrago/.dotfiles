-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
    
  use "machakann/vim-highlightedyank"
    
  use "terrortylor/nvim-comment"

  use 'RRethy/vim-illuminate'

  use "olimorris/onedarkpro.nvim"

  use 'kyazdani42/nvim-web-devicons'

  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
 -- use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
    }

  use {'tpope/vim-fugitive'}
  
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}

  
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', 
      },
      config = function()
          require("nvim-tree").setup {}
      end
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          {'neovim/nvim-lspconfig'},             
          {                                      
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, 

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     
      {'hrsh7th/cmp-nvim-lsp'}, 
      {'L3MON4D3/LuaSnip'},     
  }
}

  --end,
  requires = {'nvim-tree/nvim-web-devicons'}



end)
