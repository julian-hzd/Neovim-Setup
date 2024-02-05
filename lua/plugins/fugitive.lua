return {
  "tpope/vim-fugitive",
  lazy = false,

  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git,
      { desc = 'Git status' })

    vim.keymap.set("n", "<leader>ga", function()
      vim.cmd.Git("add .")
    end, { desc = 'Git add .' })

    vim.keymap.set("n", "<leader>gc", function()
      vim.cmd.Git("commit")
    end, { desc = 'Git commit' })

    vim.keymap.set("n", "<leader>gp", function()
      vim.cmd.Git("push")
    end, { desc = 'Git push' })
  end

}
