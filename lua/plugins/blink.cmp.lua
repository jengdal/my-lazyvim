return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      menu = { border = "single" },
      documentation = { window = { border = "single" } },
      ghost_text = { enabled = false },
      trigger = { prefetch_on_insert = false },
    },
    signature = { window = { border = "single" } },
    sources = {
      per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      },
      -- add vim-dadbod-completion to your completion providers
      providers = {
        dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
      },
    },
  },
}
