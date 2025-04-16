return {
  "fynnfluegge/monet.nvim",
  name = "monet",
  enabled = true,
  config = function()
    require("monet").setup({
      transparent_background = false,
      semantic_tokens = true,
      dark_mode = false,
      highlight_overrides = {},
      color_overrides = {},
      styles = {},
      -- optional configuration here
      -- style = "light", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
    })
    vim.cmd("colorscheme monet")
  end,
}
