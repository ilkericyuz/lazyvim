-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- disable F1 help
vim.keymap.set({ "n", "i", "v" }, "<F1>", "<Nop>", { silent = true, desc = "F1 is nop" })

-- Move fast
vim.keymap.set({ "n", "v" }, "<C-S-j>", "5j", { desc = "Move down fast" })
vim.keymap.set({ "n", "v" }, "<C-S-k>", "5k", { desc = "Move up fast" })
vim.keymap.set({ "n", "v" }, "<C-S-h>", "8h", { desc = "Move left fast" })
vim.keymap.set({ "n", "v" }, "<C-S-l>", "8l", { desc = "Move right fast" })
vim.keymap.set({ "n", "v" }, "<C-S-e>", "5<C-e>", { desc = "Scroll up fast" })
vim.keymap.set({ "n", "v" }, "<C-S-y>", "5<C-y>", { desc = "Scroll down fast" })

-- "lh" to escape (insert mode only, so `l` doesn't wait for a possible `h` in normal/visual)
vim.keymap.set("i", "lh", "<ESC>", { silent = true, desc = "lh to escape" })
vim.keymap.set("i", "LH", "<ESC>", { silent = true, desc = "LH to escape" })

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
vim.keymap.set("n", "<leader><leader>", "<C-^>", { silent = true, desc = "Switch to previous buffer" })

-- move cursor to top, middle, and bottom of the screen
vim.keymap.set("n", "<C-p>", "H", { desc = "Move cursor to the top of the screen" })
-- Move cursor to the middle of the screen
-- Only where <C-m> is distinguishable from <CR>; elsewhere this would remap Enter
if vim.g.neovide or vim.env.TERM_PROGRAM == "ghostty" or vim.env.TERM == "xterm-kitty" then
  vim.keymap.set("n", "<C-m>", "M", { desc = "Move cursor to the middle of the screen" })
end
-- Move cursor to the bottom of the screen
vim.keymap.set("n", "<C-n>", "L", { desc = "Move cursor to the bottom of the screen" })

-- neovide scale factor
-- Ensure Neovide is running before applying the scaling factor
if vim.g.neovide then
  -- Function to update scale factor
  local function update_scale_factor(delta)
    vim.g.neovide_scale_factor = (vim.g.neovide_scale_factor or 1.0) + delta
    vim.notify("Neovide Scale Factor: " .. vim.g.neovide_scale_factor)
  end

  -- Keybindings
  vim.keymap.set("n", "<C-=>", function()
    update_scale_factor(0.1)
  end, { desc = "Increase Neovide Scale" })
  vim.keymap.set("n", "<C-->", function()
    update_scale_factor(-0.1)
  end, { desc = "Decrease Neovide Scale" })
end
