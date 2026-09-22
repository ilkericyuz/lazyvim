return {
  "folke/snacks.nvim",
  opts = {
    sources = {
      explorer = {
        win = {
          input = { keys = { ["<Esc>"] = { "", mode = "n" } } },
          list = { keys = { ["<Esc>"] = { "", mode = "n" } } },
        },
      },
    },
    picker = {
      win = {
        input = { keys = { ["<Esc>"] = { "", mode = "n" } } },
        list = { keys = { ["<Esc>"] = { "", mode = "n" } } },
        preview = { keys = { ["<Esc>"] = { "", mode = "n" } } },
      },
      sources = {
        files = {
          hidden = true,
          ignored = false,
          exclude = {
            ".git",
            ".venv",
            ".idea",
            "node_modules",
          },
        },
        grep = {
          hidden = true,
          ignored = false,
          exclude = {
            ".git",
            ".venv",
            ".idea",
            "node_modules",
          },
        },
      },
    },
  },
}
