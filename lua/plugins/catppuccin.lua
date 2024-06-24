return {
  -- plugin: catppuccin
  -- function: theme
  -- src: https://github.com/catppuccin/nvim
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000 ,
  -- background = false,
  config = function () 
    -- config theme
    vim.cmd.colorscheme "catppuccin"
  end
}
