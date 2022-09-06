local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use("wbthomason/packer.nvim") -- Have packer manage itself

  -- Colorschemes
  use("folke/tokyonight.nvim")
  use("ellisonleao/gruvbox.nvim")

  -- Navigation with Tmux
  use("christoomey/vim-tmux-navigator")

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter",{
    run = ":TSUpdate"
  })

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Color the parentheses
  use("p00f/nvim-ts-rainbow")

  -- Better "di(" experinece
  use("wellle/targets.vim")

  -- LSP
  use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP

  -- Completion
  use("hrsh7th/nvim-cmp") -- engine
  use("hrsh7th/cmp-nvim-lsp") -- source that goies into the engine
  use("hrsh7th/cmp-buffer") -- source that goies into the engine
  use("hrsh7th/cmp-path") -- source that goies into the engine
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- snippet completions

  -- Fuzzy finding
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

  --[[
  -- My plugins here
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  -- use "numToStr/Comment.nvim" -- Easily comment stuff
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  use "morhetz/gruvbox"
  -- use "catppuccin/nvim"
  -- use { 'catppuccin/nvim', branch = 'dev-remaster',} -- if I do this I still don't see the other flavors

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions

    -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"

  -- nvim-tree
  use 'kyazdani42/nvim-tree.lua'


-- ]]
end)