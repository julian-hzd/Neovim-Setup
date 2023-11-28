return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 899,
  opts = {},
	config = function()
		vim.cmd("colorscheme tokyonight")
    require('tokyonight').setup({
      disable_background = true
    })

    function ColorMyPencils(color)
      color = color or "tokyonight-moon"
      vim.cmd.colorscheme(color)

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    end

    ColorMyPencils()
		end
}
