return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["g."] = "actions.toggle_hidden", -- This will show your .env files
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Open oil" },
    { "<leader>E", "<cmd>Oil .<cr>", desc = "Open oil in cwd" },
  },
}
