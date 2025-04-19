return {
  {
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup {
        options = {
          transparent = true, -- Disable setting background
        },
      }
    end,
  },
  {
    '0xstepit/flow.nvim',
    lazy = false,
    priority = 1000,
    tag = 'v2.0.1',
    opts = {
      theme = {
        style = 'dark', --  "dark" | "light"
        contrast = 'default', -- "default" | "high"
        transparent = true, -- true | false
      },
      colors = {
        mode = 'default', -- "default" | "dark" | "light"
        fluo = 'orange', -- "pink" | "cyan" | "yellow" | "orange" | "green"
        custom = {
          saturation = '', -- "" | string representing an integer between 0 and 100
          light = '', -- "" | string representing an integer between 0 and 100
        },
      },
      ui = {
        borders = 'inverse', -- "theme" | "inverse" | "fluo" | "none"
        aggressive_spell = false, -- true | false
      },
    },
    -- config = function(_, opts)
    --   require('flow').setup(opts)
    --   vim.cmd 'colorscheme flow'
    -- end,
  },
  {
    'zootedb0t/citruszest.nvim',
    lazy = false,
    -- priority = 1000,
    config = function()
      require('citruszest').setup {
        option = {
          transparent = true, -- Enable/Disable transparency
          bold = false,
          italic = true,
        },
        -- Override default highlight style in this table
        -- E.g If you want to override `Constant` highlight style
        style = {
          -- This will change Constant foreground color and make it bold.
          Constant = { fg = '#FFFFFF', bold = true },
        },
      }
    end,
  },
  {
    'qaptoR-nvim/chocolatier.nvim',
    -- priority = 1000,
    -- config = true,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        contrast = 'soft', -- can be "hard", "soft" or empty string
        transparent_mode = true,
      }

      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  {
    'marko-cerovac/material.nvim',
    -- lazy = false,
    -- priority = 1000,
    -- config = function() end,
  },
  {
    'bluz71/vim-moonfly-colors',
    -- lazy = false,
    -- priority = 1000,
    -- config = function() end,
  },
}
