" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
   source ~/.vimrc.before
endif

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/bundles.vim"))
  source ~/.vim/bundles.vim
endif

" ================ General Config ====================

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" <leader> key
let mapleader=";"
"minitty, Mode-dependent cursor
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
"let g:molokai_original = 1
let g:rehash256 = 1
color molokai
"set background=dark

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline nocursorcolumn
set cursorline nocursorcolumn

" search
set incsearch    " Shows the match while typing
"set highlight   " conflict with highlight current line
set hlsearch                    " Highlight found searches
set ignorecase
set smartcase

" editor settings
set history=1000
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set showmatch                                                     " show matching bracket (briefly jump)
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set splitright                                                    " Split vertical windows right to the current windows
set splitbelow                                                    " Split horizontal windows below to the current windows
" set relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space
set autochdir "auto change dir

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undolevels=1000 "max num of changes that can be undone

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType html,markdown setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType php setlocal dict+=~/.vim/ftplugin/php_funclist.txt

set completeopt-=preview


" Keybindings for plugin toggle
nmap <F3> :GundoToggle<cr>
nmap  <D-/> :
"nnoremap <leader>a :Ack
nnoremap <leader>v V`]
nnoremap <leader><space> :ls<cr>:b 

"------------------
" Useful Functions
"------------------

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\     if line("'\"") > 0 && line ("'\"") <= line("$") |
\         exe "normal g'\"" |
\     endif |
\ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Quickly expand current fold
cnoremap %% <C-R>=expand('%:p:h')<cr>

"在插入模式中使用Ctrl+v粘贴全局剪贴板内容
inoremap <C-v> <esc>"+pa

"在Visual模式中使用Ctrl+c复制内容到全局剪贴板
vnoremap <C-c> "+y

"在Visual模式中使用Ctrl+x剪切内容到全局剪贴板
vnoremap <C-x> "+x

"buffer switch
noremap <left> :bp<CR>
noremap <right> :bn<CR>

"Command-line mode with the enter key
noremap <CR> :

" ================ Custom Settings ========================
so ~/.vim/settings.vim
