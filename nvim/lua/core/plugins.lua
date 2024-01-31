local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use "nvim-lualine/lualine.nvim" -- cool status line

  use "nvim-tree/nvim-tree.lua" -- tree
  use "nvim-tree/nvim-web-devicons" -- dependency for icons

  use "nvimdev/dashboard-nvim" -- cool rat dashboard

  use { "catppuccin/nvim", as = "catppuccin" } -- temporary theme

  use "nvim-treesitter/nvim-treesitter" -- language support plugin

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5', -- fuzzy finder thing idk everyone just recommends this
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim", -- LANGUAGE SERVER PROTOCOL!!!
      "neovim/nvim-lspconfig",
  }

  use "akinsho/toggleterm.nvim" -- terminal

  use "lewis6991/gitsigns.nvim" -- gitsigns!!!!!!!!!!!!!

  use "hrsh7th/nvim-cmp" -- autocompletion
  use "hrsh7th/cmp-nvim-lsp"

  use "L3MON4D3/LuaSnip" -- SNIPPET ENGINE
  use "saadparwaiz1/cmp_luasnip" -- extend functionality of luasnip 
  use "rafamadriz/friendly-snippets"

  use 'm4xshen/autoclose.nvim' -- I KEEP MANUALLY CLOSING DELIMITERS 

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
