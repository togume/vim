" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif

	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }

" My Bundles
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'git://git.wincent.com/command-t.git'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'moll/vim-node'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'godlygeek/tabular'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'captbaritone/better-indent-support-for-php-with-html'
NeoBundle 'briancollins/vim-jst'
NeoBundle 'walm/jshint.vim'

call neobundle#end()

" Turn on line numbering. Turn it off with "set nonu" 
set nu 

" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent on
set ai
set shiftwidth=2
set softtabstop=2

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" Set the background
:set background=dark

" Set to 256 color
set t_Co=256

colorscheme xoria256
"colorscheme seoul256
"colorscheme hemisu
"colorscheme mango
"colorscheme grb4
"colorscheme wombat
"colorscheme Tomorrow
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-grb
"colorscheme grb256
"colorscheme grb-light
"colorscheme github
"colorscheme delek

" Formatting
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
autocmd BufNewFile,BufRead *.json setf javascript

" toggles NERDTree on and off
map <f2> :NERDTreeToggle<cr>
imap <f2> <esc>:NERDTreeToggle<cr>i

" UltiSnips Setup
:filetype plugin on
" let g:UltiSnipsListSnippets = "<S-Tab>"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-l>"

" Change leader key
:let mapleader = ","

" Change backup to edit crontab
set backupskip=/tmp/*,/private/tmp/*

" Set Nerdtree statusline to display Git branch
let NERDTreeStatusline="%{fugitive#statusline()}%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"
let NERDTreeShowLineNumbers=1

" Get more information into the statusline for files
if has('statusline')
	set laststatus=2

	" Broken down into easily includeable segments
	set statusline=%<%f\   " Filename
	set statusline+=%w%h%m%r " Options
	set statusline+=%{fugitive#statusline()} "  Git Hotness
	set statusline+=\ [%{&ff}/%Y]            " filetype
	set statusline+=\ [%{getcwd()}]          " current dir
	"set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif
