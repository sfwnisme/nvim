return   {
  -- plugin: nvim-treesitter
  -- function: code hightlighting
  -- src: https://github.com/nvim-treesitter/nvim-treesitter/wiki/installation
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    -- config treesitter on open
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "javascript", "html", "lua" },
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}


