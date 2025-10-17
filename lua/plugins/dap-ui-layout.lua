-- Put DAP UI sidebar on the RIGHT so it doesn't fight Snacks Explorer on the left
return {
  {
    "rcarriga/nvim-dap-ui",
    optional = true, -- it's loaded by lazyvim extras
    opts = function(_, opts)
      opts = opts or {}
      opts.layouts = {
        -- RIGHT sidebar: variables, breakpoints, stacks, watches
        {
          elements = {
            { id = "scopes", size = 0.35 },
            { id = "breakpoints", size = 0.15 },
            { id = "stacks", size = 0.25 },
            { id = "watches", size = 0.25 },
          },
          size = 60, -- columns; tweak to taste
          position = "right", -- <— move from left to right
        },
        -- BOTTOM strip: REPL + console
        {
          elements = {
            { id = "repl", size = 0.5 },
            { id = "console", size = 0.5 },
          },
          size = 0.25, -- 25% of editor height
          position = "bottom",
        },
      }
      return opts
    end,
  },
}
