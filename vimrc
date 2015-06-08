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
" Tab-complete your Python code
Bundle 'vim-scripts/Pydiction'
Bundle 'tshirtman/vim-cython'
" ===========================
" ===== C/C++ Specific =====
Bundle 'vim-scripts/c.vim'
Bundle 'mbbill/echofunc'
"Bundle 'scrooloose/syntastic' " It will slowdown performance of mac vim, just turn it off so far.
" ===========================
" ===== Java Specific =====
" Bundle 'adragomir/javacomplete'
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
"Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/powerline-fonts'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/TaskList.vim'
" Elegant buffer explore
Bundle 'fholgado/minibufexpl.vim'
" Vim plugin for the Perl module / CLI script 'ack'
Bundle 'mileszs/ack.vim'
" vim plugin to search using the silver searcher (ag)
Bundle 'ervandew/ag'
" Perform all your vim insert mode completions with Tab
Bundle 'msanders/snipmate.vim'
" A vim plugin to display the indention levels with thin vertical lines
Bundle 'Yggdroot/indentLine'
" ==========================
Bundle 'chrismetcalf/vim-conque'
Bundle 'vim-scripts/hexHighlight.vim'
" MakeGreen runs make and shows a red or green message bar for success/failure. Speeds the red-green-refactor cycle!
Bundle 'reinh/vim-makegreen'
" A git mirror of gundo.vim
Bundle 'sjl/gundo.vim'
Bundle 'ervandew/supertab'
" Bundle 'tpope/vim-git'
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
Bundle 'airblade/vim-gitgutter'
Bundle 'bootleq/vim-gitdiffall'

Bundle 'edkolev/promptline.vim'
Bundle 'mhinz/vim-tmuxify'
" Fuzzy file, buffer, mru, tag, etc finder.
Bundle 'kien/ctrlp.vim'
" a ctrlp.vim extension - Navigate and jump to function defs
Bundle 'tacahiroy/ctrlp-funky'
" Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.
Bundle 'terryma/vim-expand-region'
" numbers.vim is a vim plugin for better line numbers
Bundle 'myusuf3/numbers.vim'
" Markdown
Bundle 'tpope/vim-markdown'
Bundle 'suan/vim-instant-markdown'

" ======================== Colorscheme ===================================== ""
Bundle 'junegunn/seoul256.vim'
Bundle 'xenomachina/vim-holodark'
Bundle 'sickill/vim-monokai'
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on

syntax on
filetype on
filetype plugin on

colorscheme blackboard
"set guifont=Source\ Code\ Pro\ 13

" File encoding
set lazyredraw
set encoding=utf-8
set fileencoding=utf-8
set fencs=utf-8,cp950,big5,euc-jp,gbk,euc-kr,utf-bom,gb2312,gb18030,cp936,latin1
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
set clipboard=unnamed

set wildignore=/tmp/*,*.o,*~,*.pyc,*.pyo,*.so,*.bak,*.exe,*.obj,*.swp,*.zip
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

autocmd FileType python,cython set autoindent expandtab sta shiftwidth=4 softtabstop=4 tabstop=4 textwidth=119 omnifunc=pythoncomplete#Complete foldmethod=indent
autocmd FileType python,cython colorscheme jellybeans

autocmd Filetype cpp,c set noreadonly autoindent smartindent smarttab noexpandtab tabstop=4 textwidth=119 shiftwidth=4 omnifunc=cppcomplete#Complete foldmethod=syntax formatoptions=tcqlron cinoptions=:0,l1,t0,g0
autocmd Filetype cpp,c set noreadonly autoindent smartindent smarttab noexpandtab tabstop=4 textwidth=119 shiftwidth=4 omnifunc=cppcomplete#Complete foldmethod=syntax formatoptions=tcqlron cinoptions=:0,l1,t0,g0
autocmd FileType cpp,c syntax keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t
autocmd FileType cpp,c syntax keyword cOperator likely unlikely
autocmd FileType cpp,c colorscheme easonvim

autocmd FileType java set autoindent expandtab sta shiftwidth=4 softtabstop=4 tabstop=4 foldmethod=indent
" Java Autocomplete after dot .
autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P>
autocmd FileType java colorscheme seoul256

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

autocmd Filetype sh set syntax=sh
autocmd BufRead,BufNewFile *.sh let g:is_bash=1

autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown set autoindent expandtab sta shiftwidth=4 softtabstop=4 tabstop=4 textwidth=119 omnifunc=pythoncomplete#Complete foldmethod=indent

" Close Preview window automatically
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Close location list automatically after select
autocmd FileType qf nmap <buffer> <cr> <cr>:cclose<cr>
" Remap to close location list by press shortcut 'q'
autocmd FileType qf nnoremap <buffer> <silent> q :cclose<cr>

" autocmd for fugitive
autocmd User fugitive if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' | nnoremap <buffer> .. :edit %:h<CR> | endif
autocmd BufReadPost fugitive://* set bufhidden=delete

"autocmd BufWritePost *.c,*.py,*.cc silent! !~/bin/cc.sh &
"au FileType javascript call JavaScriptFold()


" remap jump tags
if !empty(glob("tags"))
    nnoremap <c-]> g<c-]>
    vnoremap <c-]> g<c-]>
    nnoremap <c-t> :po<CR>
    vnoremap <c-t> :po<CR>
else
    " Java Search
    autocmd Filetype java nnoremap <c-]> :JavaSearch -x declarations %<CR>
    autocmd Filetype java vnoremap <c-]> :JavaSearch -x declarations %<CR>
    autocmd Filetype java nnoremap <c-\>s :JavaSearch -x all %<CR>
    autocmd Filetype java vnoremap <c-\>s :JavaSearch -x all %<CR>

    " Python Search
    autocmd Filetype python nnoremap <c-]> :PythonSearchContext<CR>
    autocmd Filetype python vnoremap <c-]> :PythonSearchContext<CR>
    autocmd Filetype python nnoremap <c-\>s :PythonSearch -x references<CR>
    autocmd Filetype python vnoremap <c-\>s :PythonSearch -x references<CR>
endif

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

map q: :q

" Eclim
" let g:EclimProjectTreeAutoOpen = 1
let g:EclimLocateFileNonProjectScope = 'ag'
let g:EclimCompletionMethod = 'omnifunc'
" let g:EclimJavaSearchSingleResult = 'lopen'

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
" nnoremap ,, :b <C-Z>

" TabBar
" let g:Tb_MaxSize = 5
" let g:Tb_TabWrap = 1
" let g:Tb_SplitBelow = 1

" minibufexplorer
" let g:minibufExplAutoStart = 0
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplTabWrap = 1
let g:miniBufExplMaxSize = 5
let g:miniBufExplUseSingleClick = 1
" let g:minibufexplSoryBy = "name"

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

" vim-ariline
let g:Powerline_symbols='unicode'
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" ctrlp
let g:ctrlp_map='<c-l>'
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" let g:ctrlp_use_caching = 0
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>m :CtrlPFunky<Cr>
let g:ctrlp_funky_syntax_highlight = 1

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" PyDuction
let g:pydiction_location = '/Users/easonlee/.vim/bundle/Pydiction/complete-dict'

" YouCimpleteMe
let g:ycm_global_ycm_extra_conf='/Users/easonlee/.vim/bundle//YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" vim-instant-markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 1

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " bind \" to grep word under cursor
    " nnoremap " :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif
