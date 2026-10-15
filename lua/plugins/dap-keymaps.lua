-- Option+arrows drive the debugger (nothing else uses them, so they stay mapped)
return {
  {
    "mfussenegger/nvim-dap",
    optional = true, -- already provided by LazyExtras
    keys = {
      {
        "<M-Down>",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<M-Right>",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<M-Left>",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<M-Up>",
        function()
          require("dap").continue()
        end,
        desc = "Run/Continue",
      },
    },
  },
}
