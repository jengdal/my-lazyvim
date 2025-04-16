return {
  "wtfox/jellybeans.nvim",
  lazy = false,
  enabled = false,
  priority = 1000,
  opts = {
    style = "light", -- "dark" or "light"
    transparent = false,
    italics = true,
    flat_ui = true, -- toggles "flat UI" for pickers
    plugins = {
      all = false,
      auto = true, -- will read lazy.nvim and apply the colors for plugins that are installed
    },
    on_highlights = function(highlights, colors) end,
    on_colors = function(colors) end,
  },
}
