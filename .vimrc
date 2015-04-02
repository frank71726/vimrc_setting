set nocompatible                      " not compatible with the old-fashion vi ode
set backspace=2                       " allow backspacing over everything in insert mode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100	                  "	Maximum number of changes that can be undone.
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap			                        " When on, lines longer than the width of the window will wrap and displaying continues on the next line.
set nolist			                      " List mode: Show tabs as CTRL-I is displayed, display $ after end of
			                                "	line.  Useful to see the difference between tabs and spaces and for trailing blanks.
"set hidden
set linespace=0                       " Number of pixel lines inserted between characters.
set cursorline                        " Highlight the screen line of the cursor with CursorLine
set nofoldenable                      " When off, all folds are open.
set number                            " Print the line number in front of each line.
set numberwidth=4                     " Minimal number of columns to use for the line number.
set title                             " When on, the title of the window will be set to the value of 'titlestring' (if it is not empty), or to: filename [+=-] (path) - VIM
set showmode                          " If in Insert, Replace or Visual mode put a message on the last line.
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline                     " When off the cursor is kept in the same column (if possible).
set laststatus=2                      " The value of this option influences when the last window will have a status line: 2: always
set clipboard+=unnamed                " clipboard 數據共享生效
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set scrolloff=5                       " start scrolling when n lines away from margins
set switchbuf=useopen                 " If included, jump to the first open window that contains the specified buffer (if there is one). Otherwise: Do not examine other windows.
set showtabline=2                     " always show tab, 2: always
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " When 'wildmenu' is on, command-line completion operates in an enhanced mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
				                              " the possible matches are shown just above the command line, with the first match highlighted
set key=			                        " disable encryption
set ttyfast                           " send more chars while redrawing
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins
syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
try
  colorscheme solarized
catch
endtry
set backup			                      " Make a backup before overwriting a file.
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase                         " automatic ignore case switch
set smarttab                          " insert tabs on the start of a line according to. When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set expandtab                         " replace <TAB> with spaces
set softtabstop=4                     " Number of spaces that a <Tab> counts for while performing editing operations,
set shiftwidth=4                      " Number of spaces to use for each step of (auto)indent.
set tabstop=4                         " Number of spaces that a <Tab> in the file counts for.
set shortmess=Ia                      " remove splash wording

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" ======================================
"  custom key and plugin configurations
" ======================================
" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

"--------------------------------------------------------------------------------------
" Vundle Setting
"--------------------------------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Valloric/ListToggle'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'luochen1990/rainbow'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
"====Plugin 'tpope/vim-fugitive'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"=====Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'bufexplorer.zip'
Bundle 'taglist.vim'
Bundle 'Visual-Mark'
Bundle 'winmanager'
Bundle 'The-NERD-tree'
Bundle 'EasyGrep'
" scripts not on GitHub
"=====Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"=====Plugin 'file:///home/gmarik/path/to/plugin'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" :BundleUpdate
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.



"--------------------------------------------------------------------------------------
"rainbow  parenthesis Setting
"--------------------------------------------------------------------------------------
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"''

let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}
"--------------------------------------------------------------------------------------
" BufExplore Setting
"--------------------------------------------------------------------------------------
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.

"--------------------------------------------------------------------------------------
"  YCM Setting
"  $ cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd
"  $ ln -s /usr/lib/x86_64-linux-gnu/libclang-3.5.so.1 libclang.so
"--------------------------------------------------------------------------------------
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>?'

set completeopt=longest,menu "讓Vim的補全菜單行為與一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "離開插入模式後自動關閉預覽窗口
"ENTER即選中當前選項
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右鍵的行為
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  預設tab  s-tab 和自動補全衝突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "關閉加載.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1	" 開啟 YCM 基于標籤引擎
let g:ycm_min_num_of_chars_for_completion=2	" 從第2個鍵入字符就開始羅列匹配项
let g:ycm_cache_omnifunc=0	" 禁止緩存匹配項,每次都重新生成匹配項
let g:ycm_seed_identifiers_with_syntax=1	" 語法關鍵字補全

"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

nnoremap <F2> :YcmForceCompileAndDiagnostics<CR>
" force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在註解輸入中也能補全
let g:ycm_complete_in_comments = 1
"在字符串輸入中也能補全
let g:ycm_complete_in_strings = 1
"註解和字符串中的文字也會被收入補全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"------------------------------------------------------------------------------
" Install vundle automatically
" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
 "------------------------------------------------------------------------------
"let iCanHazVundle=1
"let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
"if !filereadable(vundle_readme)
"   echo "Installing Vundle.."
"   echo ""
"   silent !mkdir -p ~/.vim/bundle
"   silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
"   let iCanHazVundle=0
"endif

"--------------------------------------------------------------------------------------
" Copy/Paste between buffer
"--------------------------------------------------------------------------------------
"transfer/read and write one block of text between vim sessions
" Usage:
" `from' session:
" ma
" move to end-of-block
" xw
"
" `to' session:
" move to where I want block inserted
" xr
"
if has("unix")
nmap xr :r $HOME/.vimxfer<CR>
nmap xw :'a,.w! $HOME/.vimxfer<CR>
vmap xr c<esc>:r $HOME/.vimxfer<CR>
vmap xw :w! $HOME/.vimxfer<CR>
else
nmap xr :r c:/.vimxfer<CR>
nmap xw :'a,.w! c:/.vimxfer<CR>
vmap xr c<esc>:r c:/.vimxfer<cr>
vmap xw :w! c:/.vimxfer<CR>
endif

"--------------------------------------------------------------------------------------
" QuickFix
"--------------------------------------------------------------------------------------
map <F3> <ESC>:call QFSwitch()<CR>
function! QFSwitch()
  redir => ls_output
  execute ':silent! ls'
  redir END

  let exists = match(ls_output, "[Quickfix List")
  if exists == -1
    execute ':copen'
  else
    execute ':cclose'
  endif
endfunction

nmap <F6> :cn<cr>	" 切换到下一个结果
nmap <F7> :cp<cr>	" 切换到上一个结果
nmap <F4> :tabn<cr>
nmap <F5> :tabp<cr>

"--------------------------------------------------------------------------------------
" NERDTree Setting
"--------------------------------------------------------------------------------------
let g:NERDTree_title="[NERD Tree]"
let g:winManagerWindowLayout='NERDTree|TagList'
function! NERDTree_Start()
    exec 'NERDTree'
endfunc
function! NERDTree_IsValid()
    return 1
endfunction

let g:winManagerWidth = 30
nmap <silent> <F8> :WMToggle<cr><C-w><C-w><Bar>:q<CR>
nmap <silent> <c-F8> :WMToggle<cr>

"--------------------------------------------------------------------------------------
" Parenthesis Setting
"--------------------------------------------------------------------------------------
:inoremap ( ()<Left>
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<Left><CR><UP><Right><TAB>
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<Left>
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap < <><Left>
:inoremap > <c-r>=ClosePair('>')<CR>
:inoremap " ""<Left>
:inoremap //  /**/<Left><Left><Space>

function! ClosePair(char)
if getline('.')[col('.') - 1] == a:char
return "\<Right>"
else
return a:char
endif
endfunction

"--------------------------------------------------------------------------------------
" Inset mode Setting
"--------------------------------------------------------------------------------------
nnoremap <F12> :set invpaste paste?<CR>
set pastetoggle=<F12>
set showmode

"--------------------------------------------------------------------------------------
" Inset mode Setting
"--------------------------------------------------------------------------------------
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"--------------------------------------------------------------------------------------
" Markdowm setting
"--------------------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} map <Leader>p :!exec "/usr/bin/google-chrome-stable" "%:p"<CR>
"--------------------------------------------------------------------------------------
" git setting
" https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message
"--------------------------------------------------------------------------------------
autocmd Filetype gitcommit setlocal spell textwidth=72

"--------------------------------------------------------------------------------------
" Ctags Cscope
"--------------------------------------------------------------------------------------
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set csto=0
    set cst
    set csverb
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

map <F11> <ESC>:call Do_CsTag()<CR>
function! Do_CsTag()
    if(executable("cscope") && has("cscope") )
        if(has('win32'))
            execute "!dir /b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        else
            execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' > cscope.files"
        endif
        execute "!cscope -bkqR -i cscope.files"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
        execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q"
        execute "TlistUpdate"
    endif
endfunction
