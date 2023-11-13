
local servers = {
  -- clangd = {},
  -- gopls = {},
  pyright = { filetypes = { 'python' } },

  quick_lint_js = filetypes_js,
  tsserver = filetypes_js,
  biome = filetypes_js,
  vtsls = filetypes_js,

  cssls = {filetypes = {'CSS'} },
  cssmodules_ls = {filetypes = {'CSS'} },
  unocss = {filetypes = {'CSS'} },

  -- rust_analyzer = {},
  -- tsserver = {},
   html = { filetypes = { 'html', 'twig', 'hbs'} },

  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}

local config = function()
  require('mason').setup()
  require('mason-lspconfig').setup{
    ensure_installed = vim.tbl_keys(servers),

    handlers = {
      function(server_name)
        require('lspconfig')[server_name].setup {
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server_name],
          filetypes = (servers[server_name] or {}).filetypes,
        }
      end,
    }
  }
end

return {
  'williamboman/mason-lspconfig.nvim',
  config= config,
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim"
}
-- Setup neovim lua configuration
-- require('neodev').setup()

-- -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- -- Ensure the servers above are installed
-- local mason_lspconfig = require 'mason-lspconfig'

-- mason_lspconfig.setup {
--   ensure_installed = vim.tbl_keys(servers),
-- }

-- mason_lspconfig.setup_handlers {
--   function(server_name)
--     require('lspconfig')[server_name].setup {
--       capabilities = capabilities,
--       on_attach = on_attach,
--       settings = servers[server_name],
--       filetypes = (servers[server_name] or {}).filetypes,
--     }
--   end,
-- }

  
