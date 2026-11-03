return {
    "saghen/blink.cmp",
    version = "*",
    opts = {
        signature = {
            enabled = true,
            window = {
                show_documentation = false,
                border = "rounded",
            }
        },
        completion = {
            accept = {
                auto_brackets = {
                    enabled = false
                },
            },
            menu = {
                auto_show = true,
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,
            },
        },
        keymap = {
            preset = "super-tab",
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
    },
}
