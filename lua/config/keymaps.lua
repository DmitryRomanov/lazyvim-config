-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fs", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Map j to gj and k to gk
vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })

-- Easier splitting
vim.api.nvim_set_keymap("n", "vs", ":vs<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sp", ":sp<CR>", { noremap = true, silent = true })

-- Set language mapping for keyboard layout
vim.opt.langmap =
  "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
vim.opt.keymap = "russian-jcukenwin"

-- Set input method for insert mode to English
vim.opt.iminsert = 0

-- Set input method for search mode to English
vim.opt.imsearch = 0
