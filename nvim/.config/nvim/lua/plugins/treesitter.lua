return {

    "nvim-treesitter/nvim-treesitter",

    branch = "main",
    build = ":TSUpdate",

    config = function()

        local treesitter = require("nvim-treesitter")

        treesitter.setup()

        treesitter.install({
            "lua",
            "vim",
            "vimdoc",
            "javascript",
            "typescript",
            "tsx",
            "html",
            "css",
            "json",
            "markdown",
            "markdown_inline",
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "lua",
                "vim",
                "javascript",
                "typescript",
                "typescriptreact",
                "html",
                "css",
                "json",
                "markdown",
            },
            callback = function()
                vim.treesitter.start()
            end,
        })

    end,
}
