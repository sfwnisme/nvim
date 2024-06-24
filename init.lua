vim.cmd("set expandtab") --vim.cmd.expandtab = true
vim.cmd("set shiftwidth=2") --vim.cmd.shiftwidth = 2
vim.cmd("set softtabstop=2") --vim.cmd.softtabstop = 2
vim.cmd("set tabstop=2") --vim.cmd.tabstop = 2
vim.cmd("set relativenumber")
vim.cmd("set nowrap")

vim.g.mapleader = " "

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

-- dir: /nvim/lua/plugins.lua
require("lazy").setup("plugins")
