return {
  'rose-pine/neovim',
  priority = 100,
  lazy = false,
  name = 'rose-pine',
  config = function()
    vim.cmd("colorscheme rose-pine")

    require('rose-pine').setup({
      -- transparent_background = true
    })

    function ColorMyPencils(color)
      color = color or "rose-pine"
      vim.cmd.colorscheme(color)

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

    -- ColorMyPencils()
  end
}
