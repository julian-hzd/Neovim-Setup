local config = function()
  local theme = require("lualine.themes.rose-pine")
  theme.normal.c.bg = nil
  require('lualine').setup {
    options = {
      theme = theme,
      globalstatus = true,
      component_separators = '|',
      section_separators = '',
    },
    sections = {
      lualine_a = {
        {
          -- 'buffers'
        }
      },
    }
  }
end
return {
  'nvim-lualine/lualine.nvim',
  lazy = false,
  config = config,
}
