" deciding on a config path
let configpath = has ('win64') ? '~/AppData/Local/nvim/plugged' : stdpath('data') . 'plugged'

" plugin loading
call plug#begin(configpath)
	" plugins for outside of vs code exclusively
	if !exists('g:vscode')
		" theming
		Plug 'marko-cerovac/material.nvim'
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ';TSUpdate'} " requ by one below
		Plug 'christianchiarulli/nvcode-color-schemes.vim'

		Plug 'scrooloose/nerdtree'
		Plug 'ryanoasis/vim-devicons'
		Plug 'preservim/nerdcommenter'

		" Syntax highlighting
		Plug 'evanleck/vim-svelte'
		Plug 'pangloss/vim-javascript'
		Plug 'HerringtonDarkholme/yats.vim'  "Typescript

		" Conquer of Completion, takes care of autocompletes
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'codechips/coc-svelte', {'do': 'npm install'}


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



	" COLORSCHEME STUFF
	" colorscheme material
	" :lua require('material.functions').change_style("darker")
	
	" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	   highlight = {
	     enable = true,              -- false will disable the whole extension
	     disable = { "c", "rust" },  -- list of language that will be disabled
	   },
}
EOF
		 
	" configure nvcode-color-schemes
	let g:nvcode_termcolors=256
	
	colorscheme aurora " Or whatever colorscheme you make "
		 
		 
	" checks if your terminal has 24-bit color support "
	if (has("termguicolors"))
	    set termguicolors
	    hi LineNr ctermbg=NONE guibg=NONE
	endif

	augroup nerdtree_open
		" clearing all auto comamnds, i think?
		autocmd!

		" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
		autocmd StdinReadPre * let s:std_in=1
		autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | wincmd p | endif

		" Close the tab if NERDTree is the only window remaining in it.
		autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
	augroup END

endif




