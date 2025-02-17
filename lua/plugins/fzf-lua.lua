return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local fzf = require("fzf-lua")
    local actions = fzf.actions

    -- Modify keybindings for hidden file toggling
    opts.files = opts.files or {}
    opts.files.actions = opts.files.actions or {}
    opts.files.actions["ctrl-h"] = { actions.toggle_hidden } -- Change from alt-h to ctrl-h

    opts.grep = opts.grep or {}
    opts.grep.actions = opts.grep.actions or {}
    opts.grep.actions["ctrl-h"] = { actions.toggle_hidden } -- Change from alt-h to ctrl-h

    return opts
  end,
}
