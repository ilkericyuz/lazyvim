return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      -- Neo-tree keeps this state when its window is closed and reopened.
      filtered_items = { visible = true },
      window = {
        mappings = {
          ["<C-h>"] = "toggle_hidden",
        },
      },
    },
  },
}
