vim.cmd("set expandtab") --vim.cmd.expandtab = true
vim.cmd("set shiftwidth=2") --vim.cmd.shiftwidth = 2
vim.cmd("set softtabstop=2") --vim.cmd.softtabstop = 2
vim.cmd("set tabstop=2") --vim.cmd.tabstop = 2
vim.cmd("set relativenumber")
vim.cmd("set nowrap")

vim.g.mapleader = " "
-- vim.opt.relativenumber = true

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- plugin: catppuccin
  -- function: theme
  -- src: https://github.com/catppuccin/nvim
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- plugin: auto-save.nvim
  -- function: auto save changes
  -- src: https://github.com/pocco81/auto-save.nvim
  { 
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
      }
    end,
  },

  -- plugin: nvim-telescope
  -- function: files finder and filter
  -- src: https://github.com/nvim-telescope/telescope.nvim
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- plugin: nvim-treesitter
  -- function: code hightlighting
  -- src: https://github.com/nvim-treesitter/nvim-treesitter/wiki/installation
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  -- plugin: neo-tree
  -- function: folders&files tree
  -- src: https://github.com/nvim-neo-tree/neo-tree.nvim
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }
}
local opts = {}

require("lazy").setup(plugins, opts)

-- config theme on open
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- config telescope on open
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files , {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep , {})

-- config treesitter on open
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = { "javascript", "html", "lua" },
  highlight = { enable = true },
  indent = { enable = true },  
})

-- vim.keymap.set('n', ',C-n>', ':Neotree filesystem reveal left<CR>')
-- require("sfwn-plugins")
