return {
  'Exafunction/codeium.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('codeium').setup {
      enable_chat = true,
      virtual_text = {
        enabled = true,
      },
      key_bindings = {
        accept = '<C-y>',
        next = '<C-n>',
        prev = '<C-p>',
        dismiss = '<C-e>',
      },
      workspace_root = {
        use_lsp = true,
      },

      require('codeium.virtual_text').set_statusbar_refresh(function()
        require('lualine').refresh()
      end),
    }
  end,
}
