execute pathogen#infect()

autocmd vimenter * NERDTree

set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming
set tabstop=2
set shiftwidth=2
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

" Plugins specific config
set runtimepath^=~/.vim/bundle/ctrlp.vim
