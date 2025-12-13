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
    },
  },
}
