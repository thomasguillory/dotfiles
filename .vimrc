set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'    " required
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'wavded/vim-stylus'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree

set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming
set tabstop=4
set shiftwidth=4
set expandtab

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Clear search highlight
nnoremap <F3> :let @/ = ""<CR>

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

" ================ Display whitespaces ==============
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

" Show trailing whitespace:
match ExtraWhitespace /\s\+$/

syntax on               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

" HTML autoclose
func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
iabbrev </ </<C-X><C-O><c-r>=Eatchar('\m\s\<bar>/')<cr>
