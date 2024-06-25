return {
  -- plugin: neo-tree
  -- function: folders&files tree
  -- src: https://github.com/nvim-neo-tree/neo-tree.nvim
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function() 
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left<CR>', {})
    vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float<CR>', {})
  end
}
