return {
  {
    "mfussenegger/nvim-dap",
    optional = true, -- already provided by LazyExtras
    keys = {
      {
        "<Down>",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
        mode = "n",
      },
      {
        "<Right>",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
        mode = "n",
      },
      {
        "<Left>",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
        mode = "n",
      },
      {
        "<Up>",
        function()
          require("dap").restart_frame()
        end,
        desc = "Restart Frame",
        mode = "n",
      },
    },
  },
}
