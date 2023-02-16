-- Tady budou keymapy, až je budu umět --

-- vim.g.mapleader = ''

-- NERDTree bindings
vim.api.nvim_set_keymap('n', '<C-l>',  ':NERDTree\n', {noremap = true, silent = false})
-- vim.api.nvim_set_keymap('n', '<C-f>',  ':NERDTreeFind\n', {noremap = true, silent = false})

-- FZF bindings
vim.api.nvim_set_keymap('n', '<C-f>',  ':Ag\n', {noremap = true, silent = false})
