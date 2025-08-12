-- shorthand for all options
local o = vim.opt

o.breakindent = true    -- wrapped line repeats indent
o.number = true         -- print the line number in front of each line
o.relativenumber = true -- show relative line number in front of each line
o.colorcolumn = '80'    -- columns to highlight
o.cursorline = true     -- highlight the screen line of the cursor
o.tabstop = 2           -- number of spaces that <Tab> in file uses
o.softtabstop = 2       -- number of spaces that <Tab> uses while editing
o.shiftwidth = 2        -- number of spaces to use for (auto)indent step
o.list = true           -- show <Tab> and <EOL>
o.syntax = 'on'         -- syntax to be loaded for current buffer
o.scrolloff = 2         -- Min lines above or below cursor
o.foldmethod = 'syntax' -- using syntax information for folding
o.foldlevel = 99        -- everything should be unfolded by default

-- prevents some weird split opening on <C-Space> Completion
-- o.completeopt = 'menu'
