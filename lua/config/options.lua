-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.winbar = "%=%m %f"
vim.o.relativenumber = false
vim.o.swapfile = false

-- Disable pytest-cov during debug sessions so breakpoints work
vim.env.PYTEST_ADDOPTS = "--no-cov"

vim.g.lazyvim_python_lsp = "pyright"
