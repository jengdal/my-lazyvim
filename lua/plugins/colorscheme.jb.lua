return {
  'nickkadutskyi/jb.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    --require('jb').setup { transparent = false }
    vim.cmd.colorscheme 'jb'
    vim.o.background = 'light'
  end,
}
