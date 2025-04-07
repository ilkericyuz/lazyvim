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

-- "o" to new line without insert mode
vim.keymap.set("n", "o", "o<Esc>", { noremap = true, silent = true, desc = "o to new line without insert mode" })

local dap = require("dap")
-- F keys for debugging
vim.keymap.set("n", "<F5>", dap.continue, { desc = "Continue" })
vim.keymap.set("n", "<F7>", dap.step_into, { desc = "Continue" })
vim.keymap.set("n", "<F8>", dap.step_over, { desc = "Continue" })
vim.keymap.set("n", "<F9>", dap.step_out, { desc = "Continue" })
vim.keymap.set("n", "<F10>", dap.run_to_cursor, { desc = "Continue" })

-- neotree
vim.keymap.set("n", "<leader>e", function()
  if vim.bo.filetype == "neo-tree" then
    vim.cmd.wincmd("p")
  else
    vim.cmd("Neotree focus")
  end
end, { desc = "Focus Explorer" })

vim.keymap.set("n", "<leader>E", function()
  vim.cmd("Neotree toggle")
end, { desc = "Toggle Explorer" })

-- switch to previous buffer
vim.keymap.set("n", "<leader><leader>", "<C-^>", { noremap = true, silent = true, desc = "Switch to previous buffer" })

-- move cursor to top, middle, and bottom of the screen
vim.keymap.set("n", "<C-p>", "H", { desc = "Move cursor to the top of the screen" })
-- Move cursor to the middle of the screen
vim.keymap.set("n", "<C-m>", "M", { desc = "Move cursor to the middle of the screen" })
-- Move cursor to the bottom of the screen
vim.keymap.set("n", "<C-n>", "L", { desc = "Move cursor to the bottom of the screen" })

local lazy_vim = require("lazyvim.util")

-- Swap Find Files Keybindings
vim.keymap.set("n", "<leader>ff", lazy_vim.pick("files", { root = false }), { desc = "Find Files (cwd)" })
vim.keymap.set("n", "<leader>fF", lazy_vim.pick("files"), { desc = "Find Files (Root Dir)" })

-- Swap Grep Keybindings
vim.keymap.set("n", "<leader>sg", lazy_vim.pick("live_grep", { root = false }), { desc = "Grep (cwd)" })
vim.keymap.set("n", "<leader>sG", lazy_vim.pick("live_grep"), { desc = "Grep (Root Dir)" })

-- 🔄 Swap Grep Word Keybindings (fzf-lua instead of LazyVim)
vim.keymap.set("n", "<leader>sw", function()
  require("fzf-lua").grep_cword({ cwd = vim.fn.getcwd() })
end, { desc = "Search word under cursor (cwd)" })

vim.keymap.set("n", "<leader>sW", function()
  require("fzf-lua").grep_cword({ cwd = require("lazyvim.util").root.get() })
end, { desc = "Search word under cursor (Root Dir)" })

-- neovide scale factor
-- Ensure Neovide is running before applying the scaling factor
if vim.g.neovide then
  -- Function to update scale factor
  local function update_scale_factor(delta)
    vim.g.neovide_scale_factor = (vim.g.neovide_scale_factor or 1.0) + delta
    print("Neovide Scale Factor: " .. vim.g.neovide_scale_factor)
  end

  -- Keybindings
  vim.keymap.set("n", "<C-=>", function()
    update_scale_factor(0.01)
  end, { desc = "Increase Neovide Scale" })
  vim.keymap.set("n", "<C-->", function()
    update_scale_factor(-0.01)
  end, { desc = "Decrease Neovide Scale" })
end
