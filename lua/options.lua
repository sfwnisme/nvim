vim.cmd("set expandtab") --vim.cmd.expandtab = true
vim.cmd("set shiftwidth=2") --vim.cmd.shiftwidth = 2
vim.cmd("set softtabstop=2") --vim.cmd.softtabstop = 2
vim.cmd("set tabstop=2") --vim.cmd.tabstop = 2
vim.cmd("set relativenumber")
vim.cmd("set nowrap")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- vim.g.mapleader = " "
-- vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
-- vim.cmd.background = "light"

