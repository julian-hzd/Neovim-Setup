
return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme kanagawa-dragon")
    require('kanagawa').setup({
      disable_background = true
    })

    function ColorMyPencils(color)
      color = color or "kanagawa-dragon"
      vim.cmd.colorscheme(color)

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    end

    ColorMyPencils()
		end
}

