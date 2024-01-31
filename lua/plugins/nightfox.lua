return {
 "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 459,
	config = function()
		vim.cmd("colorscheme nightfox")
    require('nightfox').setup({
      disable_background = true
    })

    function ColorMyPencils(color)
      color = color or "nightfox"
      vim.cmd.colorscheme(color)

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    end

    ColorMyPencils()
		end
}

