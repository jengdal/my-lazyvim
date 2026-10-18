-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map({ "i", "x", "n", "s" }, "<D-s>", "<cmd>wa<cr><esc>", { desc = "Save All Files" })
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>wa<cr><esc>", { desc = "Save All Files" })


-- Coalesce mouse wheel events and scroll at most once per frame.
-- A fast trackpad flick sends hundreds of wheel events, and each one normally
-- triggers a full redraw. In big markdown files the treesitter highlighter
-- (injection range checks in languagetree.lua) makes every redraw expensive,
-- so the input backlog grows and nvim looks frozen.
do
  local pending, pending_win = 0, nil
  local timer = assert(vim.uv.new_timer())

  local function flush()
    local n, win = pending, pending_win
    pending, pending_win = 0, nil
    if n == 0 or not (win and vim.api.nvim_win_is_valid(win)) then
      return
    end
    local lines = n * (tonumber(vim.o.mousescroll:match("ver:(%d+)")) or 3)
    local key = lines > 0 and "\5" or "\25" -- <C-e> / <C-y>
    vim.api.nvim_win_call(win, function()
      vim.cmd("normal! " .. math.abs(lines) .. key)
    end)
  end

  local function wheel(dir)
    return function()
      local win = vim.fn.getmousepos().winid
      if win == 0 then
        return
      end
      if pending_win and pending_win ~= win then
        flush()
      end
      pending, pending_win = pending + dir, win
      if not timer:is_active() then
        timer:start(16, 0, vim.schedule_wrap(flush))
      end
    end
  end

  map({ "n", "x" }, "<ScrollWheelDown>", wheel(1), { desc = "Scroll down (coalesced)" })
  map({ "n", "x" }, "<ScrollWheelUp>", wheel(-1), { desc = "Scroll up (coalesced)" })
end

