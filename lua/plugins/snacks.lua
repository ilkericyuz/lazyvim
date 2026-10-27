local exclude = { ".git", ".venv", ".idea", "node_modules" }

return {
  "folke/snacks.nvim",
  opts = {
    lazygit = {
      configure = false, -- use lazygit's own config/colors, not one derived from the nvim colorscheme
    },
    picker = {
      sources = {
        files = { hidden = true, ignored = false, exclude = exclude },
        grep = { hidden = true, ignored = false, exclude = exclude },
      },
    },
  },
}
