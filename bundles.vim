set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'

"-----------------
" Fast navigation
"-----------------
"Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'Yggdroot/indentLine'
Bundle 'terryma/vim-multiple-cursors'

"--------------
" IDE features
"--------------
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
Bundle 'vim-scripts/bufkill.vim'
"-------------
" Other Utils
"-------------

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'nono/jquery.vim'

"sftp
Bundle 'eshion/vim-sftp-sync'

"--------------
" Color Schemes
"--------------
Bundle 'tomasr/molokai'
Bundle 'sickill/vim-monokai'

filetype plugin indent on     " required!
