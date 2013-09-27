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
set incsearch    " Shows the match while typing
"set highlight   " conflict with highlight current line
set hlsearch                    " Highlight found searches
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
set autochdir "auto change dir
set hidden

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

"indentLine
let g:indentLine_color_term = 235
let g:indentLine_char = '¦'

"Syntastic
let g:syntastic_check_on_open=1

"airline
let g:airline_theme='badwolf'
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep='♂'
"let g:airline_right_sep='♀'
"let g:airline_section_c = '%{expand("%:p")} ★%n'

"Make YouCompleteMe Compatible With UltiSnips
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
set completeopt-=preview

"Syntastic
let g:syntastic_check_on_open=1

"airline
let g:airline_theme='badwolf'
"let g:airline_powerline_fonts = 0
"let g:airline_left_sep='♂'
"let g:airline_right_sep='♀'
"let g:bufferline_echo = 0
"let g:airline_section_c = '%{expand("%:p")} ★%n'

"Make YouCompleteMe Compatible With UltiSnips
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
set completeopt-=preview

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType html,markdown setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

"conf for scp-upload{
let g:vim_sftp_configs = {
\   'card.cm.com' : {
\       'upload_on_save'   : 1,
\       'download_on_open' : 0,
\       'confirm_downloads': 1,
\       'confirm_uploads'  : 0,
\       'local_base_path'  : '/mnt/e/dev/weilife_proj/card/web/card.cm.com/',
\       'remote_base_path' : '/data/release/club/card.cm.com/',
\       'user' : 'user_00',
\       'pass' : '"isd\!\@\#user"',
\       'host' : '10.6.222.31',
\       'port' : '36000'
\   },
\   'mp.trade.qq.com' : {
\       'upload_on_save'   : 1,
\       'download_on_open' : 0,
\       'confirm_downloads': 1,
\       'confirm_uploads'  : 0,
\       'local_base_path'  : '/mnt/e/dev/weilife_proj/card/web/mp.kabao.qq.com/',
\       'remote_base_path' : '/data/release/club/mp.trade.qq.com/',
\       'user' : 'user_00',
\       'pass' : '"isd\!\@\#user"',
\       'host' : '10.12.193.197',
\       'port' : '36000'
\   },
\   'mp.qlife.qq.com' : {
\       'upload_on_save'   : 1,
\       'download_on_open' : 0,
\       'confirm_downloads': 1,
\       'confirm_uploads'  : 0,
\       'local_base_path'  : '/mnt/e/dev/weilife_proj/card/web/mp.qlife.qq.com/',
\       'remote_base_path' : '/data/release/club/mp.qlife.qq.com/',
\       'user' : 'user_00',
\       'pass' : '"isd\!\@\#user"',
\       'host' : '10.12.193.197',
\       'port' : '36000'
\   },
\   'eshion' : {
\       'upload_on_save'   : 1,
\       'download_on_open' : 0,
\       'confirm_downloads': 1,
\       'confirm_uploads'  : 0,
\       'local_base_path'  : '/mnt/e/dev/10.6.222.31_eshion/',
\       'remote_base_path' : '/home/user_00/eshion/',
\       'user' : 'user_00',
\       'pass' : '"isd\!\@\#user"',
\       'host' : '10.12.193.197',
\       'port' : '36000'
\   },
\   'fangchan_stat_build' : {
\       'upload_on_save'   : 1,
\       'download_on_open' : 0,
\       'confirm_downloads': 1,
\       'confirm_uploads'  : 0,
\       'local_base_path'  : '/mnt/e/dev/weilife_proj/wei/shell/',
\       'remote_base_path' : '/data/release/club/trade.qq.com/shell/',
\       'user' : 'user_00',
\       'pass' : '"isd\!\@\#user"',
\       'host' : '10.12.193.197',
\       'port' : '36000'
\   },
\   'qlife.qq.com' : {
\       'upload_on_save'   : 1,
\       'download_on_open' : 0,
\       'confirm_downloads': 1,
\       'confirm_uploads'  : 0,
\       'local_base_path'  : '/mnt/e/dev/weilife_proj/card/web/qlife.qq.com/',
\       'remote_base_path' : '/data/release/club/qlife.qq.com/',
\       'user' : 'user_00',
\       'pass' : '"isd\!\@\#user"',
\       'host' : '10.12.193.197',
\       'port' : '36000'
\   }
\}
"}

"Unite plugin
let g:unite_data_directory='~/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

nmap <space> [unite]
nnoremap [unite] <nop>

nnoremap <silent> [unite]<space> :<C-u>Unite -toggle -auto-resize -buffer-name=mixed file_rec/async buffer file_mru bookmark file<cr><c-u>
nnoremap <silent> [unite]f :<C-u>Unite -toggle -auto-resize -buffer-name=files file_rec/async<cr><c-u>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]o :<C-u>Unite outline<cr>

" Keybindings for plugin toggle
nmap <F3> :GundoToggle<cr>
nmap  <D-/> :
"nnoremap <leader>a :Ack
nnoremap <leader>v V`]
nnoremap <leader><space> :ls<cr>:b 

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

"buffer switch
noremap <left> :bp<CR>
noremap <right> :bn<CR>

"Command-line mode with the enter key
noremap <CR> :
