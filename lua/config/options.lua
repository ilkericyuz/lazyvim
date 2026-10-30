-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Python CLI tools installed by uv live here.
vim.env.PATH = vim.fn.expand("~/.local/bin") .. ":" .. (vim.env.PATH or "")

-- Activate the .venv in the startup directory, so lazygit, terminals and pre-commit hooks inherit it.
local venv = vim.fn.getcwd() .. "/.venv"
if vim.fn.isdirectory(venv .. "/bin") == 1 then
  vim.env.VIRTUAL_ENV = venv
  vim.env.PATH = venv .. "/bin:" .. vim.env.PATH
end

vim.o.relativenumber = false
vim.o.swapfile = false

vim.g.lazyvim_python_lsp = "pyright"
