return {
    {
        [1] = "metalelf0/jellybeans-nvim",
        priority = 1000,
        dependencies = {
            "rktjmp/lush.nvim",
        },
        config = function()
            vim.cmd("colorscheme jellybeans-nvim")
        end,
    },
}
