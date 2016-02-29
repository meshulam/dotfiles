" load pathogen bundles
filetype off
call pathogen#infect()
call pathogen#helptags()

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=" "
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Allow unsaved changes in hidden buffers
set hidden
" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number

" Set colorscheme
let g:solarized_termcolors=16
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Make tabs as wide as four spaces
set tabstop=4
set shiftwidth=4

" Use spaces for tabs
set expandtab

" Show “invisible” characters
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮
set list

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" When creating new windows, put them below or right of the active window
set splitbelow
set splitright

" Re-read files from the FS if they change and we don't have pending modifications
set autoread

" Round to a column multiple when indenting instead of using a constant number
" of spaces
set shiftround

" Break long lines on whitespace
set linebreak

" Backspace like a normal application
set backspace=indent,eol,start

" Enter inserts a newline from normal mode
nnoremap <cr> o<esc>

" bring up buffer list and waits for number input
nnoremap <leader>l :ls<CR>:b<Space>

" Navigate wrapped lines as if they were real lines
nnoremap k gk
nnoremap j gj
vnoremap k gk
vnoremap j gj

" use jk to exit insert mode
inoremap jk <esc>

nnoremap <leader>h :help<space>
nnoremap <leader>d :bdelete<space>
nnoremap <leader>s :w<cr>

" control + vim direction key to navigate windows
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

" Clear search highlighting
nnoremap <silent> <leader>/ :noh<cr>

" CtrlP
let g:ctrlp_map = '<leader>p'

" NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>
" Close Vim if NERDTree is the only remaining window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

let g:pymode_rope = 0
let g:pymode_lint_ignore = "E501,W,E302,E126,E226"
let g:pymode_folding = 0

