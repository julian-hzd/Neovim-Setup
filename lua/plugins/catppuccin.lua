return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 401,
  config = function()
    vim.cmd("colorscheme catppuccin")
    require('catppuccin').setup({})
  end
}
