return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },

  config = function()
    require('dashboard').setup {
      theme = 'hyper', -- theme is doom and hyper default is hyper
      disable_move = false, -- default is false disable move keymap for hyper
      shortcut_type = 'letter', -- shortcut type 'letter' or 'number'
      shuffle_letter = false, -- default is false, shortcut 'letter' will be randomize, set to false to have ordered letter
      -- letter_list        -- default is a-z, excluding j and k
      change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
      config = {
        header = {}, -- header
        week_header = {
          enable = true, --boolean use a week header
        },
        disable_move = true, -- boolean default is false disable move key

        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
        },

        packages = { enable = true }, -- show how many plugins neovim loaded
        -- limit how many projects list, action when you press key or enter it will run this action.
        -- action can be a function type, e.g.
        -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
        project = { enable = true, limit = 8, icon = '󰪺 ', label = 'Recent projects', action = 'Telescope find_files cwd=' },
        mru = { enable = true, limit = 16, icon = ' ', label = 'Recent files', cwd_only = false },

        footer = {}, -- footer
      }, -- config used for theme
      hide = {
        statusline = true, -- hide statusline default is true
        tabline = true, -- hide the tabline
        winbar = true, -- hide winbar
      },
      preview = {
        -- command          -- preview command
        -- file_path        -- preview file path
        -- file_height      -- preview file height
        -- file_width       -- preview file width
      },
    }
  end,
}
