
local keymap = vim.keymap

local config = function()

  local mark = require('harpoon.mark')
  local ui = require('harpoon.ui')

  return{
    keymap.set('n', '<leader>hx', mark.add_file),
    keymap.set('n', '<leader>hn', ui.nav_next),
    keymap.set('n', '<leader>hp', ui.nav_prev),
    keymap.set('n', '<leader>hm', ui.toggle_quick_menu),
    keymap.set('n', '<leader>h1',function() ui.nav_file(1) end),
    keymap.set('n', '<leader>h2',function() ui.nav_file(2) end),
    keymap.set('n', '<leader>h3',function() ui.nav_file(3) end),
    keymap.set('n', '<leader>h4',function() ui.nav_file(4) end),
}
end

return {
  'ThePrimeagen/harpoon',
  keys = config
}
