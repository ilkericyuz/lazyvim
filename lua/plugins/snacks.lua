local exclude = { ".git", ".venv", ".idea", "node_modules" }

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = { hidden = true, ignored = false, exclude = exclude },
        grep = { hidden = true, ignored = false, exclude = exclude },
      },
    },
  },
}
