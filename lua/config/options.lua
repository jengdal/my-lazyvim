-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.termguicolors = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
-- vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"

vim.g.lazyvim_picker = "snacks"

vim.opt.relativenumber = false

vim.g.lazyvim_prettier_needs_config = true

vim.o.background = "light"

vim.g.lazyvim_python_lsp = "basedpyright"
