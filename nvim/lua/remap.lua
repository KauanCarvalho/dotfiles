-- Only non-plugin dependent remaps.

-- Tab Shortcuts.
vim.keymap.set('n', 'tf', ':tabfirst<cr>', { noremap = true })
vim.keymap.set('n', 'tn', ':tabnext<cr>', { noremap = true })
vim.keymap.set('n', 'tp', ':tabprev<cr>', { noremap = true })
vim.keymap.set('n', 'tl', ':tablast<cr>', { noremap = true })
vim.keymap.set('n', 'tt', ':tabnew<cr>', { noremap = true })
vim.keymap.set('n', 'tx', ':tabclose<cr>', { noremap = true })

-- Manage Vim config more easily.
vim.keymap.set('n', '<leader>ve', ':vsplit $MYVIMRC<cr>', { noremap = true })
vim.keymap.set('n', '<leader>vr', ':source $MYVIMRC<cr>', { noremap = true })

-- Easy splits.
vim.keymap.set('n', 'vv', '<C-w>v', { noremap = true })
vim.keymap.set('n', 'ss', '<C-w>s', { noremap = true })

