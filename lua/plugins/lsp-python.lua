-- Fix and format with ruff on save, like the pre-commit hooks, so pre-commit has nothing left to do
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "ruff_fix", "ruff_format" },
    },
  },
}
