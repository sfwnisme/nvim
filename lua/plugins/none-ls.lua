return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}

-- journey bugs
-- bug syntsax error: [null-ls] failed to load builtin eslint_d for method diagnostics; please check your config:
-- solution: https://stackoverflow.com/questions/78150730/failed-to-load-builtin-eslint-d-for-method-diagnostics


-- typecraft file copy
-- return {
--   -- plugin: none-ls.nvim
--   -- function: null-ls.nvim reloaded / Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
--   -- src: https://github.com/nvimtools/none-ls.nvim
--   "nvimtools/none-ls.nvim",
--   config = function()
--     local null_ls = require("null-ls")
--
--     null_ls.setup({
--       sources = {
--         null_ls.builtins.formatting.stylua,
-- 				null_ls.builtins.formatting.prettier,
-- 				null_ls.builtins.diagnostics.eslint_d,
--       },
--     })
--     vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
--   end,
-- }
