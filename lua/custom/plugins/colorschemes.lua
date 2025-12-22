return {
  {
    'vague2k/huez.nvim',
    -- if you want registry related features, uncomment this
    import = 'huez-manager.import',
    branch = 'stable',
    event = 'UIEnter',
    config = function()
      require('huez').setup {}
    end,
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup {
        options = {
          transparent = false, -- Disable setting background
        },
      }
    end,
  },
  {
    '0xstepit/flow.nvim',
    lazy = false,
    tag = 'v2.0.1',
    opts = {
      theme = {
        style = 'dark', --  "dark" | "light"
        contrast = 'default', -- "default" | "high"
        transparent = false, -- true | false
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
  },
  {
    'zootedb0t/citruszest.nvim',
    lazy = false,
    config = function()
      require('citruszest').setup {
        option = {
          transparent = false, -- Enable/Disable transparency
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
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').setup {
        contrast = 'hard', -- can be "hard", "soft" or empty string
      }
    end,
  },
  {
    'marko-cerovac/material.nvim',
  },
  {
    'bluz71/vim-moonfly-colors',
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
  },
  {
    'uloco/bluloco.nvim',
    dependencies = { 'rktjmp/lush.nvim' },
  },
  { 'webhooked/kanso.nvim' },
}
