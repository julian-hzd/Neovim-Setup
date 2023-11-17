
return {
	"williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  cmd = "Mason",
  event = "BufReadPre",
  config = function()
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "efm",
        "bashls",
        "tsserver",
        "pyright",
        "lua_ls",
        "jsonls",
        "clangd",
        "quick_lint_js",
        "tsserver",
        "vtsls",
        "html"
      },
      automatic_installation = true,
    })
  end,
}
