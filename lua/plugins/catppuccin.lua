return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 401,
  config = function()
    vim.cmd("colorscheme catppuccin")
    require('catppuccin').setup({
      -- transparent_background = true
    })

    function ColorMyPencils(color)
      color = color or "catppuccin"
      vim.cmd.colorscheme(color)

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

    -- ColorMyPencils()
  end
}
