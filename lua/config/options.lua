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
-- vim.cmd.colorscheme("bamboo-light")

vim.g.lazyvim_python_lsp = "basedpyright"
-- vim.keymap.set("n", "gJ", function()
--   local new_config = not vim.diagnostic.config().virtual_lines
--   vim.diagnostic.config({ virtual_lines = new_config })
-- end, { desc = "Toggle diagnostic virtual_lines" })

if vim.g.neovide == true then
  vim.g.neovide_input_use_logo = 1
  vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_animate_in_insert_mode = false
  -- vim.g.neovide_scroll_animation_length = 0.00
  vim.g.neovide_hide_mouse_when_typing = true
end
