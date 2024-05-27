return {
  "folke/zen-mode.nvim",
  opts = {
    vim.keymap.set("n", "<C-Z>",
      function()
        require("zen-mode").toggle({ window = { width = .60 } })
        vim.opt.wrap = true
      end)
  }
}
