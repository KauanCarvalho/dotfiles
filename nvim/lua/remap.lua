-- Only non-plugin dependent remaps.

-- Tab Shortcuts.
vim.keymap.set('n', 'tf', ':tabfirst<cr>', { noremap = true })
vim.keymap.set('n', 'tn', ':tabnext<cr>', { noremap = true })
vim.keymap.set('n', 'tp', ':tabprev<cr>', { noremap = true })
vim.keymap.set('n', 'tl', ':tablast<cr>', { noremap = true })
vim.keymap.set('n', 'tt', ':tabnew<cr>', { noremap = true })
vim.keymap.set('n', 'tx', ':tabclose<cr>', { noremap = true })

-- Move curret split to new tab.
vim.keymap.set('n', 'tc', ':tab split<cr>', { noremap = true})

-- Manage Vim config more easily.
vim.keymap.set('n', '<leader>ve', ':vsplit $MYVIMRC<cr>', { noremap = true })
vim.keymap.set('n', '<leader>vr', ':source $MYVIMRC<cr>', { noremap = true })

-- Easy splits.
vim.keymap.set('n', 'vv', '<C-w>v', { noremap = true })
vim.keymap.set('n', 'ss', '<C-w>s', { noremap = true })
vim.keymap.set('n', '<M-w>', '<C-w>w', { noremap = true})
vim.keymap.set('n', '<M-p>', '<C-w>p', { noremap = true})

-- Close another splits in current tab.
vim.keymap.set('n', 'oo', ':tab split<cr>', { noremap = true})

-- Easy terminal mode navigation.
vim.keymap.set('t', '<M-h>', [[<C-\><C-n><C-w>h]], { noremap = true })
vim.keymap.set('t', '<M-j>', [[<C-\><C-n><C-w>j]], { noremap = true })
vim.keymap.set('t', '<M-k>', [[<C-\><C-n><C-w>k]], { noremap = true })
vim.keymap.set('t', '<M-l>', [[<C-\><C-n><C-w>l]], { noremap = true })

-- Easy normal mode navigation.
vim.keymap.set('n', '<M-h>', [[<C-w>h]], { noremap = true })
vim.keymap.set('n', '<M-j>', [[<C-w>j]], { noremap = true })
vim.keymap.set('n', '<M-k>', [[<C-w>k]], { noremap = true })
vim.keymap.set('n', '<M-l>', [[<C-w>l]], { noremap = true })

-- Easy insert mode navigation.
vim.keymap.set('i', '<M-h>', [[<Esc><C-w>h]], { noremap = true })
vim.keymap.set('i', '<M-j>', [[<Esc><C-w>j]], { noremap = true })
vim.keymap.set('i', '<M-k>', [[<Esc><C-w>k]], { noremap = true })
vim.keymap.set('i', '<M-l>', [[<Esc><C-w>l]], { noremap = true })

-- Easy visual mode navigation.
vim.keymap.set('v', '<M-h>', [[<Esc><C-w>h]], { noremap = true })
vim.keymap.set('v', '<M-j>', [[<Esc><C-w>j]], { noremap = true })
vim.keymap.set('v', '<M-k>', [[<Esc><C-w>k]], { noremap = true })
vim.keymap.set('v', '<M-l>', [[<Esc><C-w>l]], { noremap = true })

-- Useful default shortcut.
-- Ctrl+W +/-: increase/decrease height.
-- Ctrl+W >/<: increase/decrease width.
-- Ctrl+W _: set height.
-- Ctrl+W |: set width.
-- Ctrl+W =: equalize width and height of all windows.

-- Easy save or close files.
vim.keymap.set('n', '<leader>w', ':w<cr>', { noremap = true })
vim.keymap.set('n', '<leader>q', ':q<cr>', { noremap = true })

