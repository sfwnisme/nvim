return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      theme = {},
      options = {
        icons_enabled = false,
        -- theme = "base16", --catppuccin-mocha 
        sections = {
          lualine_a = {
            file = 1,
          },
        },
      },
    })
    -- require("lualine").hide()
  end
}
