return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<CR>"] = { "fallback" },
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-e>"] = { "hide", "fallback" },
    },
  },
}
