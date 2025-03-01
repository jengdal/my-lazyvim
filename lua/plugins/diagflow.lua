-- This plugin makes it so LSP errors are shown in a box in the top right
-- corner of the editor instead of inline.
return {
  "dgagn/diagflow.nvim",
  event = "LspAttach",
  enabled = true,
  opts = {
    show_borders = false,
  },
}
