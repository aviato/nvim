return {
    [1] = "jose-elias-alvarez/null-ls.nvim",
    event = "LspAttach",
    ft = { "markdown", "css", "sh", "bash", "fish" }, -- Other filetypes are handled by LspAttach
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
        require("null-ls").setup({
            sources = {
                require("null-ls").builtins.formatting.black,
                require("null-ls").builtins.formatting.prettierd.with({
                    extra_args = { "--prose-wrap=always" },
                }),
                -- require("null-ls").builtins.formatting.stylua.with({
                -- extra_args = { "--indent-type", "Spaces" },
                -- }),
                require("null-ls").builtins.diagnostics.mypy,
                require("null-ls").builtins.code_actions.shellcheck,
                require("null-ls").builtins.diagnostics.shellcheck,
            },
        })
    end,
}
