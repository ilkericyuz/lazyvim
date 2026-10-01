-- Arrow keys step through code, but only while a debug session is active
local arrows = {
  { "<Down>", "step_over", "Step Over" },
  { "<Right>", "step_into", "Step Into" },
  { "<Left>", "step_out", "Step Out" },
  { "<Up>", "restart_frame", "Restart Frame" },
}

return {
  {
    "mfussenegger/nvim-dap",
    optional = true, -- already provided by LazyExtras
    init = function()
      LazyVim.on_load("nvim-dap", function()
        local dap = require("dap")

        local function map()
          for _, a in ipairs(arrows) do
            vim.keymap.set("n", a[1], dap[a[2]], { desc = a[3] })
          end
        end

        local function unmap()
          for _, a in ipairs(arrows) do
            pcall(vim.keymap.del, "n", a[1])
          end
        end

        dap.listeners.after.event_initialized["arrow_keys"] = map
        dap.listeners.before.event_terminated["arrow_keys"] = unmap
        dap.listeners.before.event_exited["arrow_keys"] = unmap
      end)
    end,
  },
}
