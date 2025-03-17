return {
  'akinsho/toggleterm.nvim',
  version = '*',

  config = function()
    require('toggleterm').setup {
      -- size can be a number or function which is passed the current terminal
      size = 20,
      open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
      shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
      direction = 'tab',
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell,
    }
  end,
}
