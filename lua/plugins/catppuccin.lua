return {
  -- plugin: catppuccin
  -- function: theme
  -- src: https://github.com/catppuccin/nvim
  "catppuccin/nvim", 
  lazy = false,
  name = "catppuccin", 
  priority = 1000 ,
  config = function () 
    vim.cmd.colorscheme "catppuccin"
  end
}
