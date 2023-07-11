print('doing keybinds')

-- move line or visually selected block
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {})
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {})
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", {})
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", {})

-- move split panes to left/bottom/top/right
vim.keymap.set('n', '<A-h>', '<C-W>H', {})
vim.keymap.set('n', '<A-j>', '<C-W>J', {})
vim.keymap.set('n', '<A-k>', '<C-W>K', {})
vim.keymap.set('n', '<A-l>', '<C-W>L', {})

-- move between panes to left/bottom/top/right
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})

vim.keymap.set('i', '<C-Space>', '<C-X><C-O>', {})
