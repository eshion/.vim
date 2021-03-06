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
Bundle 'vim-scripts/L9'
Bundle 'othree/vim-autocomplpop'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

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
Bundle 'vim-scripts/DrawIt'

"--------------
" IDE features
"--------------
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-bufferline'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
Bundle 'Shougo/neomru.vim'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'itchyny/lightline.vim'
Bundle 'sjl/vitality.vim'
Bundle 'hsitz/VimOrganizer'
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

"------- markup language -------
"Bundle 'tpope/vim-markdown'

"sftp
Bundle 'eshion/vim-sync'

"--------------
" Color Schemes
"--------------
Bundle 'tomasr/molokai'
Bundle 'sickill/vim-monokai'

filetype plugin indent on     " required!
