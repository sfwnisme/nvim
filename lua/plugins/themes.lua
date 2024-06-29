return {
  {
    -- plugin: catppuccin
    -- function: theme
    -- src: https://github.com/catppuccin/nvim
    -- "catppuccin/nvim",
    -- lazy = false,
    -- name = "catppuccin",
    -- priority = 1000,
    -- config = function()
    --   require("catppuccin").setup({
    --     flavor = "latte",
    --     -- background = {
    --     --   light = "latte",
    --     --   dark = "mocha",
    --     -- },
    --     transparent_background = true,
    --   })
    -- vim.cmd.colorscheme "catppuccin-mocha"
    -- vim.cmd.colorscheme "catppuccin-latte"
    -- vim.cmd.colorscheme "catppuccin-frappe"
    -- vim.cmd.colorscheme "catppuccin-macchiato"
    -- vim.cmd("colorscheme catppuccin")
    -- end
  },
  {
    -- plugin: onedarkpro.nvim
    -- function: theme
    -- src: https://github.com/olimorris/onedarkpro.nvim
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true,
        },
      })
      vim.cmd("colorscheme onedark") -- cousing error
      -- vim.cmd("colorscheme onedark_vivid")
      -- vim.cmd("colorscheme onedark_dark")
    end,
  },
  {
    "morhetz/gruvbox",
    config = function()
      -- vim.cmd("colorscheme gruvbox")
    end,
  },
}
