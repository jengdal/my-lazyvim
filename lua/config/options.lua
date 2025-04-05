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

-- if vim.g.neovide == true
--   vim.keymap.set({ "n", "x" }, "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
--   vim.keymap.set({ "n", "x" }, "<C-S-V>", '"+p', { desc = "Paste system clipboard" })
-- end
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
