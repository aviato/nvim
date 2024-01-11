return {
    {
        [1] = "nvim-treesitter/nvim-treesitter",
        event = "BufRead",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
                auto_install = true,
                highlight = {
                    enable = true,
                },
            })
        end,
    },
}
