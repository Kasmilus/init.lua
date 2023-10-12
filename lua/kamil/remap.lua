vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Jump up/down but keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Jump to search but keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Go to definition and jump back
vim.keymap.set("n", "gt", "<C-]>")
vim.keymap.set("n", "gb", "<C-T>")

-- Intuitive increment and decrement
vim.keymap.set("n", "+", "<c-a>")
vim.keymap.set("n", "-", "<c-x>")

-- Conveniently enter command mode
-- Don't use silent=true as this removes the command line.
vim.keymap.set('n', ';', ':', {noremap=true})


-- Build commands

local function wordle()
  -- window size and pos
  local win_height = math.ceil(vim.o.lines * 0.7)
  local win_width = math.ceil(vim.o.columns * 0.7)
  local x_pos = math.ceil((vim.o.lines - win_height) * 0.5)  --> Center
  local y_pos = math.ceil((vim.o.columns - win_width) * 0.5) --> Center

  local win_opts = {
    border = "rounded", --> sigle, double, rounded, solid, shadow
    relative = "editor",
    style = "minimal",  --> No number, cursorline, etc.
    width = win_width,
    height = win_height,
    row = x_pos,
    col = y_pos,
  }

  -- create preview buffer
  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, win_opts)

  -- options
  vim.api.nvim_buf_set_option(buf, "bufhidden", "wipe") --> Kill the buffer when hidden
  vim.api.nvim_win_set_option(win, "winblend", 20)      --> 0 for solid color, 80 for transparent

  -- keymaps
  local keymaps_opts = { silent = true, buffer = buf }
  vim.keymap.set('n', "q", function() vim.api.nvim_win_close(win, true) end, keymaps_opts)
  vim.keymap.set('n', "<ESC>", function() vim.api.nvim_win_close(win, true) end, keymaps_opts)

  -- command
  local cmd = "build.bat"
  vim.fn.termopen(cmd)
end

vim.api.nvim_create_user_command("Wordle", wordle, { nargs = 0 })
vim.keymap.set("n", "<leader>bb", ":Wordle<CR>")

