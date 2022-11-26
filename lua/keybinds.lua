print('doing keybinds')

-- move line or visually selected block
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {})
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {})
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", {})
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", {})


