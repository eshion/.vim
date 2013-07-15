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
"Bundle 'mattn/zencoding-vim'
"Bundle 'Raimondi/delimitMate'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'SirVer/ultisnips'

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
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
Bundle 'terryma/vim-multiple-cursors'

"--------------
" IDE features
"--------------
"Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
"Bundle 'mileszs/ack.vim'
"Bundle 'kien/ctrlp.vim'
"Bundle 'fisadev/vim-ctrlp-cmdpalette'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'
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
