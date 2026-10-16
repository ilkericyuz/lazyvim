local exclude = { ".git", ".venv", ".idea", "node_modules" }

return {
  "folke/snacks.nvim",
  opts = {
    lazygit = {
      config = {
        gui = {
          theme = {
            -- Keep inactive tabs muted but readable; github_dark's FloatBorder is nearly black.
            inactiveBorderColor = { "#9da7b3" },
          },
        },
      },
    },
    picker = {
      sources = {
        files = { hidden = true, ignored = false, exclude = exclude },
        grep = { hidden = true, ignored = false, exclude = exclude },
      },
    },
  },
}
