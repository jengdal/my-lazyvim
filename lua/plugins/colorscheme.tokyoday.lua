return {
  -- add tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "day",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
    enabled = false,
  },
}
