return {
  "stevearc/conform.nvim",
  opts = {
    injected = {
      options = {
        ignore_errors = false,
        lang_to_formatters = {
          -- If you want to have a different formatter for injected sql:
          -- sql = { "sleek_wrapper", lsp_format = "never" },
        },
        lang_to_ext = {
          bash = "sh",
          c_sharp = "cs",
          elixir = "exs",
          javascript = "js",
          julia = "jl",
          latex = "tex",
          markdown = "md",
          python = "py",
          ruby = "rb",
          rust = "rs",
          teal = "tl",
          typescript = "ts",
          sql = "sql",
        },
      },
    },
    formatters = {
      sqlfmt = {
        -- pipx install shandy-sqlfmt
        command = "sqlfmt",
        args = { "-" },
      },
      sqlformat_python = {
        -- This produces bad results.
        -- pipx install sqlparse
        command = "sqlformat",
        --reindent  --identifiers lower --compact TRUE --keywords lower
        args = { "--reindent", "--use_space_around_operators", "--identifiers", "lower", "--keywords", "lower", "-" },
      },
      sleek_wrapper = {
        -- use sleek with a wrapper than handles various python parameter format strings.
        command = "sleek_wrapper.py",
      },
      pg_format = {
        command = "pg_format",
        args = { "-w", "80", "--placeholder", "%[\\([a-z_]+\\)]?s", "--no-space-function", "--no-extra-line" },
      },
    },
    formatters_by_ft = {
      markdown = { "prettier", "injected", lsp_format = "never" },
      sql = { "pg_format", lsp_format = "never" },
      ["*"] = { "injected" },
      -- We have to explicitly mention python here. I think because we're not using
      -- any confirm formatters with python, only language servers.
      python = { "injected" },
    },
  },
}
