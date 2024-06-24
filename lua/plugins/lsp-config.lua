return {
  {
    -- plugin: mason.nvim
    -- function: Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters. 
    -- src: https://github.com/williamboman/mason.nvim
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,

  },
  {
    -- plugin: mason-lspconfig.nvim
    -- function: bridges mason.nvim with the lspconfig plugin - making it easier to use both plugins together
    -- src: https://github.com/williamboman/mason-lspconfig.nvim
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    -- plugin: nvim-lspconfig 
    -- function: simplify LSP configuration and set up language servers like lua_ls and tsserver
    -- src: https://github.com/neovim/nvim-lspconfig
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }  
}
