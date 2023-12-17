return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require 'mason'

    local mason_tool_installer = require 'mason-tool-installer'

    -- enable mason and configure icons
    mason.setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    mason_tool_installer.setup {
      -- list of servers for mason to install
      ensure_installed = {
        'tsserver',
        'html',
        'cssls',
        'tailwindcss',
        'lua_ls',
        'emmet_ls',
        'pyright',
        'prettier', -- prettier formatter
        'stylua',   -- lua formatter
        'isort',    -- python formatter
        'black',    -- python formatter
        'pylint',   -- python linter
        'eslint_d', -- js linter
      },
    }
  end,
}
