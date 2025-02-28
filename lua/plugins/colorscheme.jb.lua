return {
  "nickkadutskyi/jb.nvim",
  lazy = false,
  enabled = false,
  priority = 1000,
  opts = {},
  config = function()
    --require('jb').setup { transparent = false }
    vim.o.background = "light"
    vim.cmd.colorscheme("jb")
  end,
}
