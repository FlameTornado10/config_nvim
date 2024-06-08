-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local opts_2 = { noremap = false, silent = true }

vim.keymap.set("n", "<A-l>", "<C-W>l", opts)
vim.keymap.set("n", "<A-h>", "<C-W>h", opts)
-- Seemslike currently it does not work
vim.keymap.set("n", "<X1Mouse>", "<C-o>", opts_2)

local keymap = vim.api.nvim_set_keymap

-- Something about jk
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)
keymap("n", "jj", "3j", opts)
keymap("n", "kk", "3k", opts)
-- keymap("n", "j", "2j", opts)
-- keymap("n", "k", "2k", opts)
keymap("n", "1j", "1j", opts)
keymap("n", "1k", "1k", opts)
-- Some other keymap
keymap("n", "<C-x>", "<C-v>", { noremap = true, silent = true })
keymap("n", "wh", ":vertical resize -2<CR>", opts)
keymap("n", "wl", ":vertical resize +2<CR>", opts)
-- Ctrl F4
keymap("n", "<F4>", ":bd<CR>", opts)
-- keymap("n", "<C-q>", "<C-o>:bd#<CR>", opts)

local function my_callback()
  --vim.cmd("tabnew")
  print("Callback function executed!")
end
keymap("n", "<leader>cb", "INGORED", { callback = my_callback })

keymap = vim.keymap.set
local util = require("config.util")

keymap("n", "<C-q>", util.switch_and_close_previous_buffer, opts)
keymap("n", "eh", ":BufferLineMovePrev<CR>", opts)
keymap("n", "el", ":BufferLineMoveNext<CR>", opts)
