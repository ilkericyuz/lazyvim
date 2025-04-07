return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")
    local actions = fzf.actions

    require("fzf-lua").setup({
      files = {
        actions = {
          ["ctrl-h"] = actions.toggle_hidden,
        },
      },
      grep = {
        actions = {
          ["ctrl-h"] = actions.toggle_hidden,
        },
      },
    })
  end,
}
