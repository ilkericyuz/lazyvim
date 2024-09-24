return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = cmp.mapping.preset.insert({
      -- Disable the Enter key for accepting suggestions
      ["<CR>"] = false,
    })
  end,
}
