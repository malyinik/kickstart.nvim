return {
  'rlane/pounce.nvim',
  config = function()
    require('pounce').setup {
      accept_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
    }

    local map = vim.keymap.set
    map('n', '<Space>j', function()
      require('pounce').pounce {}
    end)
    map('n', '<Space>J', function()
      require('pounce').pounce { do_repeat = true }
    end)
  end,
}
