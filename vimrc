filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" ===== Python Specific =====
" Flake8 plugin for Vim
Bundle 'nvie/vim-flake8'
" PyFlakes on-the-fly Python code checking 
Bundle 'kevinw/pyflakes-vim'
" pydoc integration for the best text editor on earth http://www.vim.org/scripts/script.php?script_id=910
Bundle 'fs111/pydoc.vim'
" Runs your UnitTests with py.test displaying red/green bars and errors
Bundle 'alfredodeza/pytest.vim'
" ===========================
" ===== C/C++ Specific =====
Bundle 'vim-scripts/c.vim'
"Bundle 'scrooloose/syntastic' " It will slowdown performance of mac vim, just turn it off so far.
" ==========================
" ===== Source Coding Utils=
Bundle 'sontek/rope-vim'
Bundle 'vim-scripts/cscope.vim'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'wesleyche/SrcExpl'
Bundle 'chazy/cscope_maps'
Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/TaskList.vim'
" Elegant buffer explore
Bundle 'fholgado/minibufexpl.vim'
" Vim plugin for the Perl module / CLI script 'ack'
Bundle 'mileszs/ack.vim'
" Perform all your vim insert mode completions with Tab
Bundle 'msanders/snipmate.vim'
" A vim plugin to display the indention levels with thin vertical lines
Bundle 'Yggdroot/indentLine'
" ==========================
Bundle 'chrismetcalf/vim-conque'
Bundle 'vim-scripts/hexHighlight.vim'
Bundle 'reinh/vim-makegreen'
Bundle 'sjl/gundo.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
Bundle 'othree/html5.vim'
Bundle 'nono/jquery.vim'
" EasyMotion : Vim motions on speed! http://www.vim.org/scripts/script.php?script_id=3526
"Bundle 'Lokaltog/vim-easymotion'
" easily search for, substitute, and abbreviate multiple variants of a word
Bundle 'tpope/vim-abolish'
" Vim plugin to respect the Linux kernel coding style
Bundle 'vivien/vim-addon-linux-coding-style'
" Network oriented reading, writing, and browsing (keywords: netrw ftp scp)
Bundle 'vim-scripts/netrw.vim'
" Translate SNMP OIDs from within Vim
Bundle 'vim-scripts/mib_translator'
" git integration
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'

filetype plugin indent on

syntax on
filetype on
filetype plugin on

colorscheme koehler
"set guifont=Source\ Code\ Pro\ 13

" File encoding
set encoding=utf-8
set fileencoding=utf-8
set fencs=utf-8,cp950,big5,euc-jp,gbk,euc-kr,utf-bom
set termencoding=utf-8
set ambiwidth=double
set hlsearch "highlight the search keyword you type
set mouse=a
set incsearch "jumps to search word as you type
set t_Co=256
set showcmd
set nu
set noreadonly
set foldlevel=99
set noeb vb t_vb= "disable beep and flash

set wildignore=*.o,*~,*.pyc,*.pyo,*.so,*.bak,*.exe,*.obj

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

autocmd FileType python set autoindent expandtab sta shiftwidth=4 softtabstop=4 tabstop=4 textwidth=119 omnifunc=pythoncomplete#Complete foldmethod=indent
autocmd Filetype cpp,c set noreadonly autoindent smartindent smarttab noexpandtab tabstop=4 textwidth=119 shiftwidth=4 omnifunc=cppcomplete#Complete foldmethod=syntax formatoptions=tcqlron cinoptions=:0,l1,t0,g0
autocmd FileType cpp,c syntax keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t
autocmd FileType cpp,c syntax keyword cOperator likely unlikely
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"autocmd BufWritePost *.c,*.py,*.cc silent! !~/bin/cc.sh &
"au FileType javascript call JavaScriptFold()

" remap jump tags
nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>
nnoremap <c-t> :po<CR>
vnoremap <c-t> :po<CR>

" supertab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
" Go to definition
map <leader>j :RopeGotoDefinition<CR>
"map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!

" CTRL+x is save and quit
map <C-x> :wq<CR>
" CTRL+q is quit
map <C-q> :q!<CR>
" CTRL+p is previous buff
map <C-p> :bp!<CR>
" CTRL+n is next buff
map <C-n> :bn!<CR>
map <C-a><C-a> :b#<CR>

"map <F4> <ESC>:call CloseTab()<CR>
map <C-z> <ESC>:call CloseTab()<CR>

"Json formatter
map <Leader>j !python -m json.tool<CR>

" SrcExpl
nmap <F8> :SrcExplToggle<CR> 
let g:SrcExpl_updateTagsCmd="/usr/local/bin/ctags --sort=foldcase -R ."
let g:SrcExpl_isUpdateTags=0
let g:SrcExpl_winHeight=5
" SrcExpl: set to 1000ms
let g:SrcExpl_refreshTime=1000

" Tlist
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Enable_Fold_Column = 1
let Tlist_Show_One_File = 1

" Conque
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_CloseOnEnd = 1

" Pydoc
let g:pydoc_open_cmd = 'vsplit'

" tagbar
map <F10> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_singleclick = 1

" Buffer
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap ,, :b <C-Z>

" TabBar
" let g:Tb_MaxSize = 5
" let g:Tb_TabWrap = 1
" let g:Tb_SplitBelow = 1

" minibufexplorer
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplTabWrap = 1
let g:miniBufExplMaxSize = 5
let g:miniBufExplUseSingleClick = 1
let g:minibufexplSoryBy = "name"

" NERDTree
let g:NERDTreeWinPos = "right"

" Snippetmate
"let g:snips_trigger_key='<c-s-tab>'
"let g:snips_trigger_key_backwards = '<S-d>'

" vim-flake8
let g:flake8_ignore="E501,W293"
let g:flake8_builtins="_,apply"
let g:flake8_max_line_length=119
let g:flake8_max_complexity=10

func! CloseTab()
	let s:buf_nr = bufnr("%")
	echo s:buf_nr
	exec ":bn "
	exec ":bdelete ".s:buf_nr
endfunction

" Misc
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
