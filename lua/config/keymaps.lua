-- ================================================================================================
-- TITLE: NeoVim keymaps
-- ABOUT: sets some quality-of-life keymaps
-- ================================================================================================

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sc", "<Cmd>close<CR>", { desc = "Close current window" })
vim.keymap.set("n", "<leader>so", "<Cmd>only<CR>", { desc = "Close all other windows" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize window sizes" })
vim.keymap.set("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", "<Cmd>e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })

-- ================================================================================================
-- DELETE WITHOUT YANKING (send to black hole register)
-- ================================================================================================

-- Character deletion
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without yanking" })
vim.keymap.set("n", "X", '"_X', { desc = "Delete character backward without yanking" })

-- Line deletion
vim.keymap.set("n", "dd", '"_dd', { desc = "Delete line without yanking" })
vim.keymap.set("n", "D", '"_D', { desc = "Delete to end of line without yanking" })

-- Word deletion
vim.keymap.set("n", "dw", '"_dw', { desc = "Delete word without yanking" })
vim.keymap.set("n", "dW", '"_dW', { desc = "Delete WORD without yanking" })
vim.keymap.set("n", "db", '"_db', { desc = "Delete word backward without yanking" })
vim.keymap.set("n", "dB", '"_dB', { desc = "Delete WORD backward without yanking" })

-- Visual mode deletion
vim.keymap.set("v", "d", '"_d', { desc = "Delete selection without yanking" })
vim.keymap.set("v", "D", '"_D', { desc = "Delete selection without yanking" })
vim.keymap.set("v", "x", '"_x', { desc = "Delete selection without yanking" })

-- Change operations (delete and enter insert mode)
vim.keymap.set("n", "c", '"_c', { desc = "Change without yanking" })
vim.keymap.set("n", "C", '"_C', { desc = "Change to end of line without yanking" })
vim.keymap.set("n", "cc", '"_cc', { desc = "Change line without yanking" })
vim.keymap.set("v", "c", '"_c', { desc = "Change selection without yanking" })

-- Text objects (optionnel, selon tes besoins)
vim.keymap.set("n", "diw", '"_diw', { desc = "Delete inner word without yanking" })
vim.keymap.set("n", "daw", '"_daw', { desc = "Delete around word without yanking" })
vim.keymap.set("n", "di(", '"_di(', { desc = "Delete inner parentheses without yanking" })
vim.keymap.set("n", "da(", '"_da(', { desc = "Delete around parentheses without yanking" })

-- ============================================================================================
-- KEYMAPS POUR MINI.TRAILSPACE - Gestion des espaces en fin de ligne
-- ============================================================================================

-- 🧹 NETTOYAGE MANUEL
-- Supprime tous les trailing spaces du buffer courant
vim.keymap.set('n', '<leader>ts', '<cmd>lua MiniTrailspace.trim()<CR>', {
  desc = 'Trim trailing spaces',
  silent = true
})


