print('doing settings...')

-- global, window local and buffer local settings
local o = vim.o
local wo = vim.wo
local bo = vim.bo


-- global options


-- window local options
wo.breakindent = true
wo.number = true
wo.relativenumber = true


-- buffer local options
bo.tabstop = 4
bo.softtabstop = 4
bo.shiftwidth = 4

print('end of settings')
