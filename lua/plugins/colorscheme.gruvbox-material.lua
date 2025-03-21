return {
  "sainnhe/gruvbox-material",
  enabled = true,
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_enable_italic = true
    -- vim.cmd.colorscheme("gruvbox-material")
    vim.g.gruvbox_material_background = "soft"
  end,
}
