return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    -- Disable all layout jumping caused by hiding/showing things when changing modes.
    opts = {
      render_modes = true,
      anti_conceal = { enabled = false },
      code = {
        style = "normal",
        sign = false,
        width = "full",
        highlight = "RenderMarkdownCode",
        border = "none",
        language_name = false,
      },
      win_options = {
        conceallevel = { default = 0, rendered = 0 },
        concealcursor = { default = "", rendered = "" },
      },

      heading = { enabled = false },
      bullet = { enabled = false },
      checkbox = { enabled = false },
      quote = { enabled = false },
      pipe_table = { enabled = false },
      link = { enabled = false },
      sign = { enabled = false },
      dash = { enabled = false },
      html = { enabled = false },
      latex = { enabled = false },
    },
  },
}
