local on_attach = require('util.lsp').on_attach
local diagnostic_signs = require('util.lsp').diagnostic_signs

local config = function()
  require('neoconf').setup {}
  local cmp_nvim_lsp = require 'cmp_nvim_lsp'
  local lspconfig = require 'lspconfig'

  for type, icon in pairs(diagnostic_signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
  end

  local capabilities = cmp_nvim_lsp.default_capabilities()

  -- configure lua server (with special settings)
  lspconfig.lua_ls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = { -- custom settings for lua
      Lua = {
        -- make the language server recognize "vim" global
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          -- make language server aware of runtime files
          library = {
            [vim.fn.expand '$VIMRUNTIME/lua'] = true,
            [vim.fn.stdpath 'config' .. '/lua'] = true,
          },
        },
      },
    },
  }

  -- json
  lspconfig.jsonls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { 'json', 'jsonc' },
  }

  -- python
  lspconfig.pyright.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
      pyright = {
        disableOrganizeImports = false,
        analysis = {
          useLibraryCodeForTypes = true,
          autoSearchPaths = true,
          diagnosticMode = 'workspace',
          autoImportCompletions = true,
        },
      },
    },
  }

  -- typescript
  lspconfig.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {
      'typescript',
    },
    root_dir = lspconfig.util.root_pattern('package.json', 'tsconfig.json', '.git'),
  }

  -- bash
  lspconfig.bashls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { 'sh', 'aliasrc' },
  }

  -- configure emmet language server
  lspconfig['emmet_ls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { 'html', 'javascript', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less', 'svelte' },
  }
end

return {
  'neovim/nvim-lspconfig',
  config = config,
  lazy = false,
  dependencies = {
    'windwp/nvim-autopairs',
    'hrsh7th/nvim-cmp',
    { 'antosha417/nvim-lsp-file-operations', config = true },
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
  },
}
