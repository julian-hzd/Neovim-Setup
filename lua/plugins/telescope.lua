local keymap = vim.keymap

local config = function()
   local telescope = require('telescope')
   telescope.setup({
    defaults = {
      mappings = {
        i = {
          ['<C-u>'] = false,
          ['<C-d>'] = false,
        },
      },
    },
  })
  -- Enable telescope fzf native, if installed
  pcall(require('telescope').load_extension, 'fzf')
end

local keys = function()
  local tb = require('telescope.builtin')

  return {
    keymap.set('n', '<leader>?', tb.oldfiles, { desc = '[?] Find recently opened files' }),
    keymap.set('n', '<leader>?', tb.oldfiles, { desc = '[?] Find recently opened files' }),
    keymap.set('n', '<leader><space>', tb.buffers, { desc = '[ ] Find existing buffers' }),

    keymap.set('n', '<leader>/', function()
      tb.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' }),

    keymap.set('n', '<leader>gf', tb.git_files, { desc = 'Search [G]it [F]iles' }),
    keymap.set('n', '<leader>sf', tb.find_files, { desc = '[S]earch [F]iles' }),
    keymap.set('n', '<leader>sh', tb.help_tags, { desc = '[S]earch [H]elp' }),
    keymap.set('n', '<leader>sw', tb.grep_string, { desc = '[S]earch current [W]ord' }),
    keymap.set('n', '<leader>sg', tb.live_grep, { desc = '[S]earch by [G]rep' }),
    keymap.set('n', '<leader>sd', tb.diagnostics, { desc = '[S]earch [D]iagnostics' }),
    keymap.set('n', '<leader>sr', tb.resume, { desc = '[S]earch [R]esume' }),
  }
end 

-- Fuzzy Finder (files, lsp, etc)
return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    lazy = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
    config = config,
    keys = keys
}


