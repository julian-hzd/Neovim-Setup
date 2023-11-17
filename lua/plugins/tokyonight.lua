return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 9100,
  opts = {},
  config = function()
    vim.cmd 'colorscheme tokyonight'
  end,
}
