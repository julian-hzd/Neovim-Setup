return {
  "tpope/vim-fugitive",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git,
      { desc = 'Git status' })

    vim.keymap.set("n", "<leader>ga", function()
        vim.cmd.Git("add .")
      end,
      { desc = 'Git status' })
  end

}
