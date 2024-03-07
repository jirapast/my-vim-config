call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()



" A (not so) minimal vimrc.
"

" You wan Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

" (my) change cursor to vertical bar after press i or a
"let mapleader = " "
"let maplocalleader = " "

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
"set guicursor=i:ver25-iCursor

set number
set paste
set nohlsearch
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

"set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.


set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#temporary-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

set textwidth=0
set ttimeout
set timeoutlen=1000
set ttimeoutlen=0

" (my) open file tree
"inoremap <Space>e <Esc>:Lex<cr>:vertical resize 30<cr>
"nnoremap <Space>e <Esc>:Lex<cr>:vertical resize 30<cr>


nmap <Space>e :NERDTreeToggle<CR>



" highlight current line "
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" enable highlight search pattern "
set hlsearch

" enable smartcase search sensitivity "
set ignorecase
set smartcase

" show the matching part of pairs [] {} and () "
set showmatch

" remove trailing whitespace from Python files"
autocmd BufWritePre *.py :%s/\s\+$//e

" enable color themes "
if !has('gui_running')
        set t_Co=256
endif
" enable true colors support "
set termguicolors
" Vim colorscheme "

colorscheme onedark

