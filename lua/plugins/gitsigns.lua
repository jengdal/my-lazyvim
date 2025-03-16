-- https://github.com/LazyVim/LazyVim/discussions/4790#discussioncomment-11288814
return {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    local default_on_attach = opts.on_attach
    opts.on_attach = function(buffer)
      default_on_attach(buffer)
      vim.keymap.set("n", "<leader>ghp", require("gitsigns").preview_hunk, { desc = "Preview Hunk", buffer = buffer })
    end

    opts.signs = {
      add = { text = "█" },
      change = { text = "█" },
      delete = { text = "█" },
      topdelete = { text = "█" },
      changedelete = { text = "█" },
      untracked = { text = "█" },
    }
    opts.signs_staged = {
      add = { text = "▒" },
      change = { text = "▒" },
      delete = { text = "▒" },
      topdelete = { text = "▒" },
      changedelete = { text = "▒" },
    }

    return opts
  end,
}
