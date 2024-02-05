return {
  "folke/zen-mode.nvim",
  opts = {
    vim.keymap.set("n", "<C-Z>",
      function()
        require("zen-mode").toggle({ window = { width = .50 } })
      end)
  }
}
