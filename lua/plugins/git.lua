return {
 {
  -- plugin: gitsigns
  -- function: git signs
  -- src: https://github.com/lewis6991/gitsigns.nvim
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({})

    --keymaps
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
    vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
  end,
},
  {
    -- plugin: vim-fugitive
    -- function: git commands
    -- src: https://github.com/tpope/vim-fugitive
    -- commands: :Git => Gstatus, Gblame, Gdiff, Gcommit,
    -- Gpull, Gpush, Gfetch, Glog, Ggrep
    "tpope/vim-fugitive",
  }
}
