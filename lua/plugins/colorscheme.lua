return {
  {
    "folke/tokyonight.nvim",
    {
      "tiagovla/tokyodark.nvim",
      opts = {
        -- custom options here
      },
      config = function(_, opts)
        require("tokyodark").setup(opts) -- calling setup is optional
        -- vim.cmd([[colorscheme tokyodark]])
      end,
    },

    lazy = false,
    priority = 1000,
  },

  {
    "BeardedBear/bearded-theme",
    lazy = false,
    priority = 1000,
  },

  {
    "killitar/obscure.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("obscure").setup({
        styles = {
          booleans = { italic = true, bold = true },
        },
        on_highlights = function(hl, c)
          hl.Comment = { fg = "#ffffff" }
          -- Or
          hl.Comment = { fg = c.orange }
        end,
      })
    end,
  },

  {
    "cdmill/neomodern.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("neomodern").setup({
        -- Main options --
        -- style = "iceclimber", -- choose between 'iceclimber', 'coffeecat', 'darkforest', 'campfire', 'roseprime', 'daylight'
        toggle_style_key = nil, -- keymap to cycle between styles
        toggle_style_list = { -- a table of which styles to cycle through, by default all styles are included
          "iceclimber",
          "coffeecat",
          "darkforest",
          -- "campfire",
          "roseprime",
          "daylight",
        },
        transparent = false, -- don't set background
        term_colors = true, -- if true enable the terminal

        -- Formatting --
        code_style = {
          comments = "italic",
          conditionals = "none",
          functions = "none",
          keywords = "none",
          headings = "bold", -- markdown headings
          operators = "none",
          keyword_return = "none",
          strings = "none",
          variables = "none",
        },

        -- UI options --
        ui = {
          colored_docstrings = true, -- if true, docstrings will be highlighted like strings, otherwise they will be highlighted like comments
          plain_float = false, -- don't set background of floating windows. recommended for when using floating windows with borders
          show_eob = true, -- show the end-of-buffer tildes

          -- Plugins Related --
          lualine = {
            bold = true,
            plain = false, -- use a less distracting lualine. note: works best when no lualine separators are used
          },
          cmp = {
            plain = false, -- don't highlight lsp-kind items
            reverse = false, -- reverse item kind highlights in cmp menu
          },
          telescope = "borderless", -- choose between 'borderless' or 'bordered'
          diagnostics = {
            darker = true, -- darker colors for diagnostic
            undercurl = true, -- use undercurl for diagnostics
            background = true, -- use background color for virtual text
          },
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups
      })
    end,
  },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ...
      })

      -- vim.cmd("colorscheme github_dark")
    end,
  },

  {
    "wojciechkepka/vim-github-dark",
    lazy = false,
    priority = 1000,
  },

  {
    "rockyzhang24/arctic.nvim",
    branch = "v2",
    dependencies = { "rktjmp/lush.nvim" },
    priority = 1000,
  },

  {
    "sharpchen/Eva-Theme.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        bold_keywords = false,
        -- Enable italic comments.
        italic_comments = true,
        -- Enable editor background transparency.
        transparent = {
          -- Enable transparent background.
          bg = false,
          -- Enable transparent background for floating windows.
          float = false,
        },
        -- Enable brighter float border.
        bright_border = true,
        -- Reduce the overall amount of blue in the theme (diverges from base Nord).
        reduced_blue = true,
        -- Swap the dark background with the normal one.
        swap_backgrounds = false,
        -- Cursorline options.  Also includes visual/selection.
        cursorline = {
          -- Bold font in cursorline.
          bold = false,
          -- Bold cursorline number.
          bold_number = true,
          -- Available styles: 'dark', 'light'.
          theme = "light",
          -- Blending the cursorline bg with the buffer bg.
          blend = 0.85,
        },
        noice = {
          -- Available styles: `classic`, `flat`.
          style = "classic",
        },
        telescope = {
          -- Available styles: `classic`, `flat`.
          style = "classic",
        },
        leap = {
          -- Dims the backdrop when using leap.
          dim_backdrop = false,
        },
        ts_context = {
          -- Enables dark background for treesitter-context window
          dark_background = true,
        },
      })
    end,
  },

  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    -- you can do it like this with a config function
    -- config = function()
    --   require("catppuccin").setup({
    --     -- configurations
    --   })
    -- end,
    -- or just use opts table
    opts = {
      -- configurations
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  {
    "aktersnurra/no-clown-fiesta.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false, -- Enable this to disable the bg color
      styles = {
        -- You can set any of the style values specified for `:h nvim_set_hl`
        comments = {},
        functions = {},
        keywords = {},
        lsp = { underline = true },
        match_paren = {},
        type = { bold = true },
        variables = {},
      },
    },
  },

  {
    "shaunsingh/nord.nvim",
  },

  {
    "marko-cerovac/material.nvim",
  },

  { "EdenEast/nightfox.nvim" },

  { "kdheepak/monochrome.nvim" },

  { "datsfilipe/vesper.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark",
    },
  },
}
