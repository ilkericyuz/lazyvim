-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Show the filename winbar only in file windows (not Neo-tree, DAP UI, floats, etc.)
local function update_winbar(win)
  local buf = vim.api.nvim_win_get_buf(win)
  local is_file = vim.bo[buf].buftype == "" and vim.api.nvim_win_get_config(win).relative == ""
  vim.wo[win].winbar = is_file and "%=%m %f" or ""
end

vim.api.nvim_create_autocmd({ "BufWinEnter", "FileType" }, {
  group = vim.api.nvim_create_augroup("user_winbar", { clear = true }),
  callback = function()
    update_winbar(vim.api.nvim_get_current_win())
  end,
})

-- this file loads on VeryLazy, after the first windows were already opened
for _, win in ipairs(vim.api.nvim_list_wins()) do
  update_winbar(win)
end
