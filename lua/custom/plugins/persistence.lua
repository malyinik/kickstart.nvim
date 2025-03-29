return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- load the session for the current directory
    vim.keymap.set('n', '<leader>pl', function()
      require('persistence').load()
    end, { desc = '[P]ersistence [l]oad session' }),

    -- select a session to load
    vim.keymap.set('n', '<leader>pS', function()
      require('persistence').select()
    end, { desc = '[P]ersistence [S]elect session' }),

    -- load the last session
    vim.keymap.set('n', '<leader>pL', function()
      require('perswstence').load { last = true }
    end, { desc = '[P]ersistence load [L]ast session' }),

    -- stop Persistence => session won't be saved on exit
    vim.keymap.set('n', '<leader>pd', function()
      require('persistence').stop()
    end, { desc = 'Stop Persistence' }),
  },
}
