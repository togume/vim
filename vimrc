" Begin Dein.vim - https://github.com/Shougo/dein.vim

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " My Plugins
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('godlygeek/tabular')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('wincent/Command-T')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('moll/vim-node')
  call dein#add('pangloss/vim-javascript')
  call dein#add('jelera/vim-javascript-syntax')
  call dein#add('junegunn/seoul256.vim')
  call dein#add('digitaltoad/vim-jade')
  call dein#add('captbaritone/better-indent-support-for-php-with-html')
  call dein#add('briancollins/vim-jst')
  call dein#add('walm/jshint.vim')
  call dein#add('mxw/vim-jsx')
  " call dein#add('justinj/vim-react-snippets')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('marijnh/tern_for_vim')
  call dein#add('Slava/tern-meteor')
  call dein#add('tpope/vim-surround')
  " call dein#add('pascoual/meteor-vim-ultisnips')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('rizzatti/dash.vim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
" End Dein.vim

" Turn on line numbering. Turn it off with "set nonu" 
set nu 
set ai
set expandtab
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
let g:UltiSnipsSnippetDir="~/.vim/bundle/meteor-vim-ultisnips/"

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
