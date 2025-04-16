return {
  "olimorris/codecompanion.nvim",
  config = true,
  enabled = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {

    opts = {
      log_level = "DEBUG",
    },
    strategies = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
      cmd = {
        adapter = "copilot",
      },
    },
    adapters = {
      -- copilot = function()
      --   return require("codecompanion.adapters").extend("copilot", {
      --     env = {
      --       api_key = "cmd:gh auth token",
      --     },
      --   })
      -- end,
      ds = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "ds", -- Give this adapter a different name to differentiate it from the default ollama adapter
          schema = {
            model = {
              default = "deepseek-r1:14b",
            },
            -- num_ctx = {
            --   default = 16384,
            -- },
            -- num_predict = {
            --   default = -1,
            -- },
          },
        })
      end,
    },
  },
}
