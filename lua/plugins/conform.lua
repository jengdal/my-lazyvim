return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      injected = {
        options = {
          ignore_errors = false,
          lang_to_formatters = {
            -- If you want to have a different formatter for injected sql:
            sql = { "sleek_wrapper", lsp_format = "never" },
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
        -- args = {
        --   "-w",
        --   "80",
        --   "--placeholder",
        --   "(%(\\([\\w_]+\\))?s)+[\\b|\\W]",
        --   -- "%[\\([a-z_]+\\)]?s",
        --   "--no-space-function",
        --   "--no-extra-line",
        --   "--nogrouping",
        --   "--comma-break",
        --   "--spaces",
        --   "4",
        -- },
      },
      prettier_sql = {
        command = "npx",
        args = { "prettier", "--stdin-filepath", "prettify.sql" },
      },
    },
    formatters_by_ft = {
      markdown = { "prettier", "injected", lsp_format = "never" },
      -- SQL files are formatted with this, injected SQL may be formatted with something else.
      sql = { "pg_format", lsp_format = "never" },
      -- ["*"] = { "injected" },
      -- Injected languages inside python should be formatted. Python itself should be formatted by the LSP system:
      python = { "injected", lsp_format = "last" },
    },
  },
}
