return     {
  -- plugin: nvim-telescope
  -- function: files finder and filter
  -- src: https://github.com/nvim-telescope/telescope.nvim
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 
    'nvim-lua/plenary.nvim'
  },
  config = function() 
    -- telescope telescope on open
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
  end
}


