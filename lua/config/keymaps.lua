-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- disable F1 help
vim.keymap.set({ "n", "i", "v" }, "<F1>", "<Nop>", { noremap = true, silent = true, desc = "F1 is nop" })

vim.keymap.set(
  "n",
  "<leader>sx",
  require("fzf-lua").resume,
  { noremap = true, silent = true, desc = "Resume last telescope session" }
)

-- Move fast
vim.keymap.set({ "n", "v" }, "<C-S-j>", "5j", { desc = "Move down fast" })
vim.keymap.set({ "n", "v" }, "<C-S-k>", "5k", { desc = "Move up fast" })
vim.keymap.set({ "n", "v" }, "<C-S-h>", "8h", { desc = "Move left fast" })
vim.keymap.set({ "n", "v" }, "<C-S-l>", "8l", { desc = "Move right fast" })
vim.keymap.set({ "n", "v" }, "<C-S-e>", "5<C-e>", { desc = "Scroll up fast" })
vim.keymap.set({ "n", "v" }, "<C-S-y>", "5<C-y>", { desc = "Scroll down fast" })

-- "lh" to escape
vim.keymap.set({ "n", "i", "v" }, "lh", "<ESC>", { noremap = true, silent = true, desc = "lh to escape" })
vim.keymap.set({ "n", "i", "v" }, "LH", "<ESC>", { noremap = true, silent = true, desc = "LH to escape" })

-- F keys for debugging
vim.keymap.set("n", "<F5>", require("dap").continue, { desc = "Continue" })
vim.keymap.set("n", "<F7>", require("dap").step_into, { desc = "Continue" })
vim.keymap.set("n", "<F8>", require("dap").step_over, { desc = "Continue" })
vim.keymap.set("n", "<F9>", require("dap").step_out, { desc = "Continue" })
vim.keymap.set("n", "<F10>", require("dap").run_to_cursor, { desc = "Continue" })

-- neotree
vim.keymap.set("n", "<leader>e", function()
  if vim.bo.filetype == "neo-tree" then
    vim.cmd.wincmd("p")
  else
    require("neo-tree.command").execute({ focus = true })
  end
end, { desc = "Focus Explorer" })
vim.keymap.set("n", "<leader>E", function()
  require("neo-tree.command").execute({ toggle = true })
end, { desc = "Toggle Explorer" })

-- switch to previous buffer
vim.keymap.set("n", "<leader><leader>", "<C-^>", { noremap = true, silent = true, desc = "Switch to previous buffer" })

-- move cursor to top, middle, and bottom of the screen
vim.keymap.set("n", "<C-p>", "H", { desc = "Move cursor to the top of the screen" })
-- Move cursor to the middle of the screen
vim.keymap.set("n", "<C-m>", "M", { desc = "Move cursor to the middle of the screen" })
-- Move cursor to the bottom of the screen
vim.keymap.set("n", "<C-n>", "L", { desc = "Move cursor to the bottom of the screen" })
