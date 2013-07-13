source ~/.vim/bundles.vim

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
set incsearch
"set highlight   " conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
"set nofoldenable                                                  " disable folding
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
set autochdir       "auto change dir

"persistent undo
set undofile
set undodir=~/.cache/undo
set undolevels=1000 "max num of changes that can be undone

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

"indentLine
let g:indentLine_color_term = 235
let g:indentLine_char = '¦'

"Syntastic
let g:syntastic_check_on_open=1

" display indentation guides
"set list listchars=tab:¦-,trail:·,extends:»,precedes:«,nbsp:×

" powerline
" let g:Powerline_symbols = 'fancy'

"Make YouCompleteMe Compatible With UltiSnips
"let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-Tab>'
set completeopt-=preview

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType html,markdown setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_cmd = 'CtrlPBuffer'

let g:ctrlp_working_path_mode = 'ra'    " search for nearest ancestor like .git, .hg, and the directory of the current file
let g:ctrlp_match_window_bottom = 0		" show the match window at the top of the screen
let g:ctrlp_max_height = 10				" maxiumum height of match window
let g:ctrlp_switch_buffer = 'et'		" jump to a file if it's open already
let g:ctrlp_use_caching = 1				" enable caching
let g:ctrlp_clear_cache_on_exit=0  		" speed up by not removing clearing cache evertime
let g:ctrlp_mruf_max = 250 				" number of recently opened files

" Keybindings for plugin toggle
nmap <F5> :TagbarToggle<cr>
nmap <F6> :Explore<cr>
"nmap <F3> :GundoToggle<cr>
"nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :
"nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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
