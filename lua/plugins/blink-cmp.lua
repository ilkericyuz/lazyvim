return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",

      ["<CR>"] = { "fallback" },
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-e>"] = { "hide", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
    },
    signature = { enabled = true },
  },
}
