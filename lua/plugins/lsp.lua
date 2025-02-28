return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      -- pyright = {},
      pyright = {
        settings = {
          pyright = {
            -- Using Ruff's import organizer
            disableOrganizeImports = true,
            openFilesOnly = false,
          },
          python = {
            analysis = {
              -- Ignore all files for analysis to exclusively use Ruff for linting
              --ignore = { "*" },
              autoImportCompletions = true,
              autoSearchPaths = true,
            },
          },
        },
      },
      ruff = {
        on_attach = function(client, bufnr)
          -- Disable hover in favor of Pyright
          client.server_capabilities.hoverProvider = false
          -- Organize imports via code action on save
          vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function()
              vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
            end,
            buffer = bufnr,
          })
        end,
      },
    },
  },
}
