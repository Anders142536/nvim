" deciding on a config path
let configpath = has ('win64') ? '~/AppData/Local/nvim/plugged' : stdpath('data') . 'plugged'

" plugin loading
call plug#begin(configpath)
	" plugins for outside of vs code exclusively
	if !exists('g:vscode')
		Plug 'marko-cerovac/material.nvim'
		Plug 'scrooloose/nerdtree'
		Plug 'ryanoasis/vim-devicons'
		Plug 'preservim/nerdcommenter'
	endif
call plug#end()

" if NOT embedded in vs code
if !exists('g:vscode')
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	syntax on
	set number relativenumber
	set nocompatible
	set hlsearch
	set mouse=a
	set cursorline
	set cc=80
	
	" move line or visually selected block - alt+j/k
	inoremap <A-j> <Esc>:m .+1<CR>==gi
	inoremap <A-k> <Esc>:m .-2<CR>==gi
	vnoremap <A-j> :m '>+1<CR>gv=gv
	vnoremap <A-k> :m '<-2<CR>gv=gv
	
	" move split panes to left/bottom/top/right
	nnoremap <A-h> <C-W>H
	nnoremap <A-j> <C-W>J
	nnoremap <A-k> <C-W>K
	nnoremap <A-l> <C-W>L
	
	" move between panes to left/bottom/top/right
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l
	
	" nerdcommenter binding for toggling comments
	nnoremap <C-_> <Leader>c<Space>
	inoremap <C-_> <Esc><leader>c<Space>
	vnoremap <C-_> <Leader>c<Space>

	colorscheme material
	:lua require('material.functions').change_style("darker")
	
	augroup nerdtree_open
		autocmd!
		autocmd VimEnter * NERDTree | wincmd p
	augroup END

endif