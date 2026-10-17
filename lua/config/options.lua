-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Python CLI tools installed by uv live here.
vim.env.PATH = vim.fn.expand("~/.local/bin") .. ":" .. (vim.env.PATH or "")

vim.o.relativenumber = false
vim.o.swapfile = false

vim.g.lazyvim_python_lsp = "pyright"
