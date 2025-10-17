-- Short Python DAP test keymaps, alongside LazyVim extras
return {
  {
    "mfussenegger/nvim-dap-python",
    optional = true, -- plugin already provided by extras
    keys = {
      {
        "<leader>dm",
        function()
          require("dap-python").test_method()
        end,
        desc = "Debug Test Method",
        ft = "python",
      },
      {
        "<leader>dM",
        function()
          require("dap-python").test_class()
        end,
        desc = "Debug Test Class",
        ft = "python",
      },
      {
        "<leader>ds",
        function()
          require("dap-python").debug_selection()
        end,
        desc = "Debug Selection",
        ft = "python",
        mode = { "n", "v" },
      },
    },
  },
}
