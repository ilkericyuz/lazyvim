-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume last telescope session" }
)

vim.keymap.set("n", "<C-S-j>", "5j", { desc = "Move up fast" })
vim.keymap.set("n", "<C-S-k>", "5k", { desc = "Move up fast" })
vim.keymap.set("n", "<C-S-h>", "8h", { desc = "Move left fast" })
vim.keymap.set("n", "<C-S-l>", "8l", { desc = "Move right fast" })
