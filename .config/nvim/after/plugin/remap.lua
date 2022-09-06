local Remap = require("user.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- open netrw
nnoremap("<leader>pv","<cmd>Ex<CR>")

-- easier window navigation
vim.g.tmux_navigator_no_mappings = 1
nnoremap("<C-h>", ":TmuxNavigateLeft<cr>")
nnoremap("<C-j>", ":TmuxNavigateDown<cr>")
nnoremap("<C-k>", ":TmuxNavigateUp<cr>")
nnoremap("<C-l>", ":TmuxNavigateRight<cr>")

-- easier tab navigation
nnoremap("j", "gj")
nnoremap("k", "gk")

-- Unmap
nnoremap("<S-j>","<Nop>")
vnoremap("<S-j>","<Nop>")
nnoremap("<Space>", "<Nop>")
