return {
  'nvim-telescope/telescope.nvim', version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- optional but recommended
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    require('telescope').setup {
      defaults = {
        mappings = {
          n = {
            ["d"] = actions.delete_buffer,
          },
        },
      },
    }

    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files" })
    vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ")});
    end)
    vim.keymap.set('n', '<leader>pw', function()
      builtin.grep_string({ search = vim.fn.expand("<cword>")});
    end)
  end,
}



