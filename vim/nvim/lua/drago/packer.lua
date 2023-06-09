-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end

-- local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "machakann/vim-highlightedyank"
  use "terrortylor/nvim-comment"
  use {'ojroques/nvim-bufdel'}
  use {'tpope/vim-fugitive'}
  use "olimorris/onedarkpro.nvim"
  use 'kyazdani42/nvim-web-devicons'
  use {'ThePrimeagen/vim-be-good'}
  use 'alvan/vim-closetag'
  use 'mattn/emmet-vim'
  use 'AndrewRadev/tagalong.vim'

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
    }

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
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}


  if packer_bootstrap then
    require('packer').sync()
  end

end)
