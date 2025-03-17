return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- load the session for the current directory
    vim.keymap.set('n', '<leader>qs', function()
      require('persistence').load()
    end, { desc = 'Load Session' }),

    -- select a session to load
    vim.keymap.set('n', '<leader>qS', function()
      require('persistence').select()
    end, { desc = '[S]elect Session' }),

    -- load the last session
    vim.keymap.set('n', '<leader>ql', function()
      require('perswstence').load { last = true }
    end, { desc = 'Load [L]ast Sesswon' }),

    -- stop Persistence => session won't be saved on exit
    vim.keymap.set('n', '<leader>qd', function()
      require('persistence').stop()
    end, { desc = 'Stop Persistence' }),
  },
}
