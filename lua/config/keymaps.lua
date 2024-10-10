-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume last telescope session" }
)

-- Move fast
vim.keymap.set("n", "<C-S-j>", "5j", { desc = "Move up fast" })
vim.keymap.set("n", "<C-S-k>", "5k", { desc = "Move up fast" })
vim.keymap.set("n", "<C-S-h>", "8h", { desc = "Move left fast" })
vim.keymap.set("n", "<C-S-l>", "8l", { desc = "Move right fast" })
vim.keymap.set("v", "<C-S-j>", "5j", { desc = "Select up fast" })
vim.keymap.set("v", "<C-S-k>", "5k", { desc = "Select up fast" })
vim.keymap.set("v", "<C-S-h>", "8h", { desc = "Select left fast" })
vim.keymap.set("v", "<C-S-l>", "8l", { desc = "Select right fast" })

-- "jk" to escape
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "jk to escape" })
vim.keymap.set("v", "jk", "<ESC>", { noremap = true, silent = true, desc = "jk to escape" })

-- F keys for debugging
vim.keymap.set("n", "<F5>", require("dap").continue, { desc = "Continue" })
vim.keymap.set("n", "<F7>", require("dap").step_into, { desc = "Continue" })
vim.keymap.set("n", "<F8>", require("dap").step_over, { desc = "Continue" })
vim.keymap.set("n", "<F9>", require("dap").step_out, { desc = "Continue" })
vim.keymap.set("n", "<F10>", require("dap").run_to_cursor, { desc = "Continue" })
