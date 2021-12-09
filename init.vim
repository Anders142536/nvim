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

" windows version of plugin loading
if has ('win64')
	call plug#begin('~/AppData/Local/nvim/plugged')
		Plug 'marko-cerovac/material.nvim'
		Plug 'scrooloose/nerdtree'
		Plug 'ryanoasis/vim-devicons'
		Plug 'preservim/nerdcommenter'
	call plug#end()
endif

" linux version of plugin loading
if has('unix')
	call plug#begin(stdpath('data') . 'plugged')
		Plug 'marko-cerovac/material.nvim'
		Plug 'scrooloose/nerdtree'
		Plug 'ryanoasis/vim-devicons'
		Plug 'preservim/nerdcommenter'
	call plug#end()
endif

colorscheme material
:lua require('material.functions').change_style("darker")

augroup nerdtree_open
	autocmd!
	autocmd VimEnter * NERDTree | wincmd p
augroup END
