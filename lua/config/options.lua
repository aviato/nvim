-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
----vim.api.nvim_set_hl(0, "Search", { bg = "#ffff00", fg = "#000000" })
--vim.api.nvim_set_hl(0, "Visual", { bg = "#ffffff", fg = "#ff4444" })

-- Block cursor in all modes
--vim.opt.guicursor = "a:hor50"

-- Set cursor colors using vim.cmd
--vim.cmd([[
--  highlight Cursor guibg=#ff4444 guifg=#ff4444
--  highlight lCursor guibg=#ff4444 guifg=#ff4444
--]])

-- Different shapes for different modes
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20"

-- Blinking cursor
-- vim.opt.guicursor = "n-v-c:block-blinkwait700-blinkoff400-blinkon250"
-- Enable cursor line highlighting
-- vim.opt.cursorcolumn = true  -- uncomment for column highlighting too

-- lua/config/options.lua
-- vim.cmd([[
--   highlight CursorLine guifg=#ff0000 guibg=#ffffff
--   highlight CursorColumn guifg=#ff0000 guibg=#ffffff
-- ]])

-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true
