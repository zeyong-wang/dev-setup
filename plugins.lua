-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- file explorer
  use {
  'nvim-tree/nvim-tree.lua',
  requires = { 
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },  
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- lsp
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP, sudo apt-get install clang clangd
end)
require("nvim-tree-setup")
require("lsp-setup")
