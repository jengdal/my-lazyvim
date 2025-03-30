return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    -- Show the statusline at the top of windows
    opts.winbar = {
      lualine_a = opts.sections.lualine_a,
      lualine_b = opts.sections.lualine_b,
      lualine_c = opts.sections.lualine_c,
      lualine_x = opts.sections.lualine_x,
      lualine_y = opts.sections.lualine_y,
      lualine_z = opts.sections.lualine_z,
    }
    opts.inactive_winbar = {
      lualine_c = opts.sections.lualine_c,
      lualine_x = opts.sections.lualine_x,
    }
  end,
}
