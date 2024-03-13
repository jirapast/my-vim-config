
" Start of .vimrc

call plug#begin()
    Plug 'flazz/vim-colorschemes'
    Plug 'preservim/nerdtree'
    Plug 'tribela/vim-transparent'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    "Plug.'prettier/vim-prettier',.{.'do':.'yarn.install.--frozen-lockfile.--production'.}
    "Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdcommenter'
call plug#end()

" Toggle NERDTree with <Space>e
nmap <Space>e :NERDTreeToggle<CR>



" vim-airline additional conf: Smarter tab line
"let g:airline_statusline_ontop=1
"let g:airline#extensions#bufferline#enabled = 1

let g:airline#extensions#tabline#enabled=1

let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#right_sep=''
let g:airline#extensions#tabline#right_alt_sep = '|'

let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='onedark'

set showtabline=2

"let g:airline#extensions#tabline#formatter = 'default'


" Put all temporary files under the same directory
set backup
set backupdir=$HOME/.vim/files/backup/
set backupext=-vimbackup
set directory=$HOME/.vim/files/swap//
set updatecount=100
set undofile
set undodir=$HOME/.vim/files/undo/
set viminfo='100,n$HOME/.vim/files/info/viminfo

" Customize NERDTree directory highlighting
hi Directory guifg=#FF0000 ctermfg=red

" Set Vim to use 'nocompatible' mode
set nocompatible

" Enable filetype detection, plugin loading, and indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Define terminal escape sequences for cursor shape changes
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Enable line numbers
set number

" Enable paste mode
set paste

" Disable search highlighting after a search
set nohlsearch

" Enable auto-indentation
set autoindent

" Use spaces for indentation
set expandtab

" Set the width of a tab to 4 spaces
set tabstop=4

" Set the number of spaces for each indentation level to 4
set shiftwidth=4

" Indent to next multiple of 'shiftwidth'
set shiftround

" Keep cursor 999 characters away from the screen edge
set sidescrolloff=999

" Allow switching buffers without saving
set hidden

" Always show statusline
set laststatus=2

" Show current mode in command-line
"set showmode   " set this if you want to see things like -- INSERT --
set noshowmode  " set this if you do not want to see things like -- INSERT --

" Show already typed keys when more are expected
set showcmd

" Highlight while searching
set incsearch
set hlsearch

" Faster redrawing
set ttyfast

" Only redraw when necessary
set lazyredraw

" Open new windows below the current window
set splitbelow

" Open new windows right of the current window
set splitright





" Set textwidth to 0
set textwidth=0

" Set timeout options
set ttimeout
set timeoutlen=1000
set ttimeoutlen=0




" Highlight current line
set cursorline
highlight Cursorline cterm=bold ctermbg=black

" Enable smartcase search sensitivity
set ignorecase
set smartcase

" Show the matching part of pairs [] {} and ()
set showmatch







" Define listchars to display non-printable characters
set list
" Define listchars conditionally for multi-byte UTF-8 encoding
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
  endif
  " set listchars=tab:>-,trail:~,extends:>,precedes:<
  set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.

" Save file
nnoremap <F2> :w<CR>

" Save and quit
nnoremap <F3> :wq<CR>

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Map F6 to delete lines beginning with 'print('
nnoremap <F6> :g/^print(/d<CR>

" Toggle spell-checking on and off with F7
nnoremap <F7> :set spell! spelllang=en<CR>

" Navigate to next tab with F8
nnoremap <F8> :bp<CR>

" Navigate to previous tab with F9
nnoremap <F9> :bn<CR>

noremap <F10> :tabp<CR>
noremap <F11> :tabn<CR>

set statusline+=%#TabNumber#
set statusline+=%{tabpagenr()}

set laststatus=2

" env to allow fzf to find hidden files
let $FZF_DEFAULT_COMMAND = 'rg --hidden -l ""'

set fillchars+=vert:\ "White space at the end 

set nocursorline
set paste
colorscheme murphy
