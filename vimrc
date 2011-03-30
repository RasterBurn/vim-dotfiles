if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

cal pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=1000
set undolevels=1000
set ruler		" show the cursor position all the time

set nowrap
set tabstop=4
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set noerrorbells
set nobackup
set noswapfile
set hidden
set smartindent
set expandtab


" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

  autocmd BufNewFile,BufRead *.ei2d set filetype=xml
endif

" if has("cscope") && filereadable("/usr/bin/cscope")
"    set csprg=/usr/bin/cscope
"    set csto=0
"    set cst
"    set nocsverb
"    " add any database in current directory
"    if filereadable("cscope.out")
"       cs add cscope.out
"    " else add database pointed to by environment
"    elseif $CSCOPE_DB != ""
"       cs add $CSCOPE_DB
"    endif
"    set csverb
" endif

if &t_Co >= 256 || has("gui_running")
  colo vividchalk

  set go-=m " remove menu bar
  set go-=T " remove toolbar
  set go-=r " remove scroll bar
endif

if &t_Co >= 2 || has("gui_running")
  syntax on
  if has("win32")
    set guifont=envy_code_r:h14
  else
    set guifont=Envy\ Code\ R\ 14
  endif
endif


if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif

" toggle keys
map <F2> :NERDTreeToggle<CR>
set pastetoggle=<F3>
