vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--------------------
-- General Keymaps
--------------------

local opts = { noremap = ture, silent = true }

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", opts)

-- delete single char witout copy into register
keymap.set("n", "x", '"_x', opts)

keymap.set("n", "<leader>w", "<cmd>w<CR>", opts)
