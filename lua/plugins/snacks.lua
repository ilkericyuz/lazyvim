local exclude = { ".git", ".venv", ".idea", "node_modules" }

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        input = { keys = { ["<Esc>"] = { "", mode = "n" } } },
        list = { keys = { ["<Esc>"] = { "", mode = "n" } } },
        preview = { keys = { ["<Esc>"] = { "", mode = "n" } } },
      },
      sources = {
        files = { hidden = true, ignored = false, exclude = exclude },
        grep = { hidden = true, ignored = false, exclude = exclude },
      },
    },
  },
}
