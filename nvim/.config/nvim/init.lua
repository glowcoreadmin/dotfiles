vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.number = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"

vim.opt.smoothscroll = true
vim.opt.scrolloff = 12

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99

require("config.diagnostics")
require("config.keymaps")
require("config.lazy")

vim.api.nvim_create_user_command("Svg", function()
    vim.cmd([[%s#svg#Svg#geI]])
    vim.cmd([[%s#path#Path#geI]])
    vim.cmd([[%s#\r##g]])
    vim.cmd([[%s#React.SVGProps<SVGSVGElement>#SvgProps#ge]])
    vim.cmd([[%s/\s*xmlns="[^"]*"//g]])
    vim.cmd([[%s#const #export const #geI]])
    vim.api.nvim_buf_set_lines(0, 0, 0, false, {
        [[import { Svg, Path, SvgProps } from 'react-native-svg';]],
        [[]]
    })
    vim.cmd([[noh]])
end, {})

vim.api.nvim_set_hl(0, "SnippetTabstop", {})
vim.api.nvim_set_hl(0, "SnippetTabstopActive", {})
