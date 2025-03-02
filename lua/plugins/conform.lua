return {
  "stevearc/conform.nvim",
  opts = {
    injected = {
      options = {
        ignore_errors = false,
      },
    },
    formatters = {
      shandy_sqlfmt = {
        -- pipx install shandy-sqlfmt
        command = "sqlfmt",
        args = { "-" },
      },
    },
    formatters_by_ft = {
      sql = { "shandy_sqlfmt" },
      ["*"] = { "injected" },
      -- We have to explicitly mention python here. I think because we're not using
      -- any confirm formatters with python, only language servers.
      python = { "injected" },
    },
  },
}
