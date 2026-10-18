-- Pick the colorscheme based on how nvim was launched and on which OS.
-- LazyVim calls this once at startup; theme plugins below only provide opts.
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local is_mac = vim.uv.os_uname().sysname == "Darwin"
        local has_args = vim.fn.argc(-1) > 0
        local scheme
        if has_args then
          scheme = "monet"
        elseif is_mac then
          scheme = "onenord"
        else
          scheme = "everforest"
          -- scheme = "bamboo-light"
        end
        vim.cmd.colorscheme(scheme)
      end,
    },
  },
}
