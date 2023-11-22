-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util");

local map = Util.safe_keymap_set;

map("n", "<C-u>",':bnext<CR>',{ desc = "Go to next buffer", remap = true })
map("n", "<C-i>",':bprev<CR>',{ desc = "Go to prev buffer", remap = true })
map("n", "<C-o>",':bd<CR>',{ desc = "Close current buffer", remap = true })