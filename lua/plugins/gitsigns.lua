-- https://github.com/LazyVim/LazyVim/discussions/4790#discussioncomment-11288814
return {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    local default_on_attach = opts.on_attach
    opts.on_attach = function(buffer)
      default_on_attach(buffer)
      vim.keymap.set("n", "<leader>ghp", require("gitsigns").preview_hunk, { desc = "Preview Hunk", buffer = buffer })
    end
    return opts
  end,
}
