local parsers = {
    "typescript",
    "tsx",
    "javascript",
    "lua",
    "markdown",
    "markdown_inline",
    "json",
    "yaml",
    "html",
    "css",
    "bash",
    "python",
    "sql"
}

local filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
    "lua",
    "markdown",
    "json",
    "yaml",
    "html",
    "css",
    "sh",
    "python",
    "sql",
}

return {
    {
        "nvim-treesitter/nvim-treesitter",

        lazy = false,
        build = ":TSUpdate",

        config = function()
            require("nvim-treesitter").install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                pattern = filetypes,
                callback = function(args)
                    local ft = vim.bo[args.buf].filetype
                    local lang = vim.treesitter.language.get_lang(ft) or ft

                    local ok, err = pcall(
                        vim.treesitter.start,
                        args.buf,
                        lang
                    )

                    if not ok then
                        vim.notify(
                            ("Tree-sitter failed for %s: %s"):format(lang, err),
                            vim.log.levels.WARN
                        )
                    end
                end,
            })
        end,
    }
}
