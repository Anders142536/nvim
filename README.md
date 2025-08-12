# Setup

This setup is written for Neovim 0.11. LSPs are well supported, but there is no built-in package manager yet.

To install the package manager follow the instructions here:

https://github.com/savq/paq-nvim#installation

## Nice to know

### Easy to forget keybinds

| keybind      | effect                                                        |
| ------------ | ------------------------------------------------------------- |
| CTRL-w d     | Show diagnostics                                              |
| g + anything | lsp interaction. which key should pop up and show the options |

### Finding the filetype of a buffer / file

Use the following to get the filetype of a file:

`:= vim.bo.filetype`

This is necessary in a lot of configs that map tools to filetypes and - confusingly - the file extension does not match the filetype string.
