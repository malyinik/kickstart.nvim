return {
  'folke/twilight.nvim',
  config = function()
    require('twilight').setup {
      context = 15, -- amount of lines we will try to show around the current line
      expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
        'function',
        'method',
        'table',
        'if_statement',
        'namespace',
        'class',
        'struct',
        'enum',
        'loop',
        'try_statement',
      },
    }
  end,
}
