local keymap = vim.keymap

-- harpoon
local config = function()
  return{
    keymap.set('n', '<leader>hx', require('harpoon.mark').add_file),
    keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next),
    keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev),
    keymap.set('n', '<leader>hv', require('harpoon.ui').toggle_quick_menu)
}
end

return {
  'ThePrimeagen/harpoon',
  keys = config
}
