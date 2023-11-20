local keymap = vim.keymap

local config = function()
  local mark = require 'harpoon.mark'
  local ui = require 'harpoon.ui'

  return {
    keymap.set('n', '<leader>a', mark.add_file),
    keymap.set('n', '<C-e>', ui.toggle_quick_menu),

    keymap.set('n', '<leader>hp', ui.nav_prev),
    keymap.set('n', '<leader>hn', ui.nav_next),

    keymap.set('n', '<leader>1', function()
      ui.nav_file(1)
    end),
    keymap.set('n', '<leader>2', function()
      ui.nav_file(2)
    end),
    keymap.set('n', '<leader>3', function()
      ui.nav_file(3)
    end),
    keymap.set('n', '<leader>4', function()
      ui.nav_file(4)
    end),
  }
end

return {
  'ThePrimeagen/harpoon',
  keys = config,
}
