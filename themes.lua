
return
{
  {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 900,
    opts = {},
    config = function()
      vim.cmd.colorscheme 'tokyonight'
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 500,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 400,
    config = function()
      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
}
