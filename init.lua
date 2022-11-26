print('initializing...')

require('settings')
require('keybinds')

-- deciding on a config path, as vim-plug needs the folder it is in as a parameter
local plugPath = vim.fn.stdpath('data') .. 'plugged'

print('plugPath: ' .. plugPath)

local Plug = vim.fn['plug#']

vim.call('plug#begin', plugPath)

print('loading plugins')

vim.call('plug#end')

print('done initializing')
