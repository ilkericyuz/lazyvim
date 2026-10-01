return {
  "kiyoon/python-import.nvim",
  build = "uv tool install . --force --reinstall",
  keys = {
    {
      "<leader>cM",
      function()
        require("python_import.api").add_import_current_word_and_notify()
      end,
      mode = "n",
      silent = true,
      desc = "Add python import",
      ft = "python",
    },
    {
      "<leader>cM",
      function()
        require("python_import.api").add_import_current_selection_and_notify()
      end,
      mode = "x",
      silent = true,
      desc = "Add python import",
      ft = "python",
    },
    {
      "<leader>ci",
      function()
        require("python_import.api").add_import_current_word_and_move_cursor()
      end,
      mode = "n",
      silent = true,
      desc = "Add python import and move cursor",
      ft = "python",
    },
    {
      "<leader>ci",
      function()
        require("python_import.api").add_import_current_selection_and_move_cursor()
      end,
      mode = "x",
      silent = true,
      desc = "Add python import and move cursor",
      ft = "python",
    },
    {
      "<leader>ctr",
      function()
        require("python_import.api").add_rich_traceback()
      end,
      silent = true,
      desc = "Add rich traceback",
      ft = "python",
    },
  },
  opts = {},
}
