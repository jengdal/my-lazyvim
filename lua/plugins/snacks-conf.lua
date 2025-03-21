return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- Show most hidden files in both the file picker and the file explorer.
      -- I want to be able to easily find files like .github/actions/blah.yml and .env
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git", "__pycache__", ".idea", ".ruff_cache", "DS_Store" },
        },
        files = {

          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git", "__pycache__", ".idea", ".ruff_cache", "DS_Store", ".venv" },
        },
        recent = {
          -- Only show recent files from below the current working directory.
          filter = { cwd = true },
        },
      },

      layouts = {

        -- Modify the vertical layout to fit long file paths.
        vertical = {
          layout = {
            backdrop = false,
            width = 0.9,
            min_width = 80,
            height = 0.9,
            min_height = 30,
            box = "vertical",
            border = "rounded",
            title = "{title} {live} {flags}",
            title_pos = "center",
            { win = "input", height = 1, border = "bottom" },
            { win = "list", border = "none" },
            { win = "preview", title = "{preview}", height = 0.4, border = "top" },
          },
        },
      },
      win = {},

      -- Tweak the fuzzy matcher to prioritize file names, frequently and recently used files.
      matcher = {
        fuzzy = true, -- use fuzzy matching
        smartcase = true, -- use smartcase
        ignorecase = true, -- use ignorecase
        sort_empty = false, -- sort results when the search string is empty
        filename_bonus = true, -- give bonus for matching file names (last part of the path)
        file_pos = true, -- support patterns like `file:line:col` and `file:line`
        -- the bonusses below, possibly require string concatenation and path normalization,
        -- so this can have a performance impact for large lists and increase memory usage
        cwd_bonus = false, -- give bonus for matching files in the cwd
        frecency = true, -- frecency bonus
        history_bonus = true, -- give more weight to chronological order
      },
      layout = {
        cycle = true,
        -- preset = "default",

        --   --- Use the default layout or vertical if the window is too narrow
        preset = function()
          return "vertical"
          --return vim.o.columns >= 120 and "default" or "vertical"
        end,
      },

      -- Show as much of the file path as possible.
      formatters = {
        file = {
          filename_first = false, -- display filename before the file path
          truncate = 100, -- truncate the file path to (roughly) this length
          filename_only = false, -- only show the filename
          icon_width = 2, -- width of the icon (in characters)
          git_status_hl = true, -- use the git status highlight group for the filename
        },
        selected = {
          show_always = false, -- only show the selected column when there are multiple selections
          unselected = true, -- use the unselected icon for unselected items
        },
        severity = {
          icons = true, -- show severity icons
          level = false, -- show severity level
          ---@type "left"|"right"
          pos = "left", -- position of the diagnostics
        },
      },
    },
  },
}
