-- Short Python DAP test keymaps, alongside LazyVim extras
return {
  {
    "mfussenegger/nvim-dap-python",
    optional = true, -- plugin already provided by extras
    init = function()
      LazyVim.on_load("nvim-dap", function()
        -- pytest-cov breaks breakpoints, so disable it while debugging
        require("dap").listeners.on_config["no_pytest_cov"] = function(config)
          if config.type == "python" then
            config.env = vim.tbl_extend("force", config.env or {}, { PYTEST_ADDOPTS = "--no-cov" })
          end
          return config
        end
      end)
    end,
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
        mode = "x",
      },
    },
  },
}
