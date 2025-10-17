return {
  {
    "LazyVim/LazyVim",
    lazy = true,
    opts = {
      colorscheme = "github_dark",
    },
  },

  {
    "wojciechkepka/vim-github-dark",
    lazy = true,
    priority = 1000,
  },

  {
    "nickkadutskyi/jb.nvim",
    lazy = true,
    priority = 1000,
    opts = {},
    config = function()
      -- require("jb").setup({transparent = true})
      vim.cmd("colorscheme jb")
    end,
  },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = true,
  },
}
