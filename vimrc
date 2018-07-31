set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('$HOME/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-startify'

"***** color schemes *****
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'notpratheek/vim-luna'
Plugin 'baskerville/bubblegum'

"full screen control
Plugin 'derekmcloughlin/gvimfullscreen_win32'

"status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'

Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/L9'

Plugin 'tpope/vim-vinegar'

Plugin 'tpope/vim-surround'

"Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/Conque-Shell'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-endwise'
Plugin 'majutsushi/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"***** leader key *****
let mapleader="\<space>"
inoremap jj <esc>

"***** Tab length control *****
"syntax enable
set smartindent  
set tabstop=4  
set shiftwidth=4  
set expandtab  
set softtabstop=4

"***** NERDTreeTabs *****
"map <F2> :NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_gui_startup=2
"let g:nerdtree_tabs_open_on_console_startup=1
"let g:nerdtree_tabs_focus_on_files=1
"let g:nerdtree_tabs_autofind=1


"***** NERDTree *****
map <F2> :NERDTreeToggle<CR>
"disable auto start of NERD
let g:NERDTreeHijackNetrw=0
"map <F2> :NERDTreeFind<CR>
"autocmd BufEnter * lcd %:p:h
"Open directory of current file
"autocmdNERDTreeToggle BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeCWD | wincmd p | endif
"autocmd BufEnter * silent! lcd %:p:h
"set autochdir
"autocmd BufEnter * lcd %:p:h
"***** Use startify, turned off NERDTree
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:NERDTreeHidden=0
"Open file in new tab
""打开vim时自动打开NERDTree
"autocmd vimenter * NERDTree
"" NERDTress File highlighting

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction



call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"color scheme
syntax enable
"colorscheme gruvbox
"colorscheme solarized
"let g:airline_solarized_bg='dark'
"colorscheme luna
colorscheme gruvbox
set bg=dark    " Setting dark mode 
"set bg=light   " Setting light mode 
"set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=NONE ctermfg=green guibg=#504945 guifg=NONE


" Window switch control
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

"full screen
autocmd GUIEnter * simalt ~x
"disable toolbar, menubar, scroll 
":set guioptions-=m  "remove menu bar
":set guioptions-=T  "remove toolbar
":set guioptions-=r  "remove right-hand scroll bar
":set guioptions-=L  "remove left-hand scroll bar
"*******Disable window border******
"run the command immediately when starting vim
"autocmd VimEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
" activate/deactivate full screen with function key <F11>  
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
"*****disable tab bar*****
":set showtabline=0

"*****tab page control *****"
"nnoremap <Tab> :tabnext<CR>
"inoremap <Tab> <ESC>:tabnext<CR>
"vnoremap <Tab> <ESC>:tabnext<CR>
"nnoremap <Tab> :tabnext<CR>
"inoremap <Tab> <ESC>:tabnext<CR>
"vnoremap <Tab> <ESC>:tabnext<CR>

"nnoremap <C-n> :tabnew<CR>
"inoremap <C-n> <ESC>:tabnew<CR>
"vnoremap <C-n> <ESC>:tabnew<CR>



"***** UTF-8 encoding *****
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8

"set guifont=Source\ Code\ Pro\ for\ Powerline:h15:cANSI
set guifont=Source_Code_Pro_Light:h11:cANSI
"*****Status vim-airline *****
""""""""""""""""""""""""""""""""""""""""""
""" airline设置
""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set laststatus=2
set lazyredraw
let g:airline_theme='powerlineish'
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
" 关闭空白符检测
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Show Tabline
let g:airline#extensions#tabline#enabled = 1

" Show Buffers
let g:airline#extensions#tabline#show_buffers = 1

" Otherwise key-mapping doesn't work
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Don't display 'BUFFERS', etc on the top right
let g:airline#extensions#tabline#show_tab_type = 0

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_theme='luna'

"***** Show line numbers *****
set nu
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

"***** session control *****
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_to = 'default'
let g:session_verbose_messages = 0

"***** startify *****
" 起始页显示的列表长度
let g:startify_files_number = 20

" 是否自动加载目录下的Session.vim, 很好用
let g:startify_session_autoload = 1

" 过滤列表，支持正则表达式
let g:startify_skiplist = [
       \ '\.vimgolf',
       \ '^/tmp',
       \ '/project/.*/documentation',
       \ ]
let g:startify_custom_header = [
            \ '+------------------------------+',
            \ '|  Welcome to dwx vim.         |',
            \ '|                              |',
            \ '|  email: 81600996@qq.com      |',
            \ '+----------------+-------------+',
            \]

if has('nvim')
  autocmd TabNewEntered * Startify
else
  autocmd VimEnter * let t:startify_new_tab = 1
  autocmd BufEnter *
        \ if !exists('t:startify_new_tab') && empty(expand('%')) |
        \   let t:startify_new_tab = 1 |
        \   Startify |
        \ endif
endif

"***** nerd commenter *****
"" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

"***** buffer save control *****
"Ctrl+s to save buffer to file
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
vnoremap <C-s> <ESC>:w<CR>

"Ctrl+n to create buffer
nnoremap <C-n> :enew<CR>i
inoremap <C-n> <ESC>:enew<CR>i
vnoremap <C-n> <ESC>:enew<CR>i
nnoremap <leader>n :enew<CR>i

"***** alt+q to exit *****
nnoremap ñ :wq<CR> 
inoremap ñ :wq<CR> 
vnoremap ñ :wq<CR> 

"***** save all and quit *****
nnoremap <C-q> :xa<CR>
inoremap <C-q> <ESC>:xa<CR>
vnoremap <C-q> <ESC>:xa<CR>
":wqa

"***** buffer tab control *****
"nnoremap <Tab> :bnext!<CR>
nnoremap gt :bnext!<CR>
nnoremap gT :bprevious<CR>

"***** Leader control *****
nnoremap <leader>g :FufBuffer<CR>
nmap <leader>f :FufFile **/<CR>
"nnoremap <leader>f :FufFile \*\*\/<CR>

"***** ignore search file or directory *****
"let g:fuf_dir_exclude = '/v.(hg|git|bzr|dist|node_modules|build)'
"let g:fuf_file_exclude = '/v/~$|/.o$|/.exe$|/.bak$|/.swp$|/.class$|dist*|node_module*|build*'

"Close buffer
nnoremap <leader>q :bd<CR>
nnoremap <leader>qf :bd!<CR>
nnoremap <leader>wq :w<CR>:bd<CR>
nnoremap <leader>w :w<CR>

"new buffer, disable use ctrl+n
nnoremap <leader>nh :new<CR>i
nnoremap <leader>nv :vnew<CR>i

"Reload startify
nnoremap <leader>st :Startify<CR>

"***** windows control *****
"switch windows
"split window at
set splitright
nnoremap <C-Tab> :wincmd w<CR>
inoremap <C-Tab> <ESC>:wincmd w<CR>
vnoremap <C-Tab> <ESC>:wincmd w<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"***** java auto complete *****
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"nnoremap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
"Ctrl+Enter to auto import
"nnoremap  <Plug>(JavaComplete-Imports-AddSmart)
"inoremap  <Plug>(JavaComplete-Imports-AddSmart)

"auto generate abstract method
"nnoremap <leader>jm <Plug>(JavaComplete-Generate-AbstractMethods)
"inoremap  <Plug>(JavaComplete-Generate-AbstractMethods)

"auto constructor
"nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
"nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)
"nmap <C-o> <Plug>(JavaComplete-Generate-Constructor)

"new class 
"nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)

"***** tagbar control *****
noremap <F3> :TagbarToggle<CR>
"let g:tagbar_ctags_bin = 'ctags'        "tagbar以来ctags插件
"let g:tagbar_left = 1                   "让tagbar在页面左侧显示，默认右边
let g:tagbar_width = 30                 "设置tagbar的宽度为30列，默认40
let g:tagbar_autofocus = 1   

nnoremap <leader>t :ConqueTermVSplit cmd.exe<CR>
nnoremap <leader>T :ConqueTermSplit cmd.exe<CR>
nnoremap <C-t> :ConqueTermVSplit cmd.exe<CR>
inoremap <C-t> :ConqueTermvSplit cmd.exe<CR>
au BufReadPre FILETYPE au! PluginNotes
au BufReadPre FILETYPE au! PluginXoloxMisc
let g:ConqueTerm_StartMessages = 0

let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_completion_confirm_key = '<enter>'

let g:AutoPairsFlyMode = 1

set path+=**
set wildmenu
set mouse=a

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0


