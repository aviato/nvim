-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Store the initial directory when nvim starts
local initial_cwd = vim.fn.getcwd()

-- Keymap to find the word under the cursor using Telescope, but only if in the initial directory or its subdirectories
-- NOTE: I really don't even know if I need this since Telescope's default behavior is to search from the current directory...
-- didn't seem to be working though
vim.keymap.set("n", "<leader>fw", function()
  local current_cwd = vim.fn.getcwd()
  -- Check if we're still in the initial directory or a subdirectory of it
  if current_cwd:find("^" .. vim.pesc(initial_cwd)) then
    require("telescope.builtin").grep_string()
  else
    print("fw keybind only available in initial project: " .. initial_cwd)
  end
end, { desc = "Find word under cursor (initial project only)" })

vim.keymap.set("n", "<leader>yrp", function()
  local relative_path = vim.fn.expand("%")
  vim.fn.setreg("+", relative_path)
  vim.notify("Copied relative path: " .. (relative_path == "" and "[No file]" or relative_path))
end, { desc = "Copy relative file path" })

vim.keymap.set("n", "<leader>yap", function()
  local absolute_path = vim.fn.expand("%:p")
  vim.fn.setreg("+", absolute_path)
  vim.notify("Copied absolute path: " .. absolute_path)
end, { desc = "Copy absolute file path" })
