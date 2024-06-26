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
    lazy = false,
    config = function()
      --lspconfig.lua_ls.setup({})
      --lspconfig.tsserver.setup({})
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

      -- controle the virtula error line display
      vim.diagnostic.config({
        virtual_text = true,
        -- signs = true,
        -- underline = true,
        -- update_in_insert = false,
        -- severity_sort = false,
      })

      ----------------------------------------------------------
      -- Show line diagnostic in a floating window
      -- src: https://stackoverflow.com/questions/69290794/nvim-lsp-change-lspconfig-diagnostic-message-location
      -- LSP UI customization src: https://github.com/neovim/nvim-lspconfig/wiki/UI-Customization

      -- Show line diagnostics in floating window using keymap
      -- solution src: https://github.com/neovim/nvim-lspconfig/commit/382712c4ecba5816f398379dd9d8c8200b025ca3
      -- solution stackoverflow src: https://stackoverflow.com/a/69298743/18000848
      vim.keymap.set("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", {})

      -- Show line diagnostics automatically in hover window
      -- solution src: https://stackoverflow.com/a/70760302/18000848
      -- vim.o.updatetime = 250
      -- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
      ----------------------------------------------------------
    end,
  },
}
