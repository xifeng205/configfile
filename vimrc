" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc "	    for OpenVMS:  sys$login:.vimrc
" When started as "evim", evim.vim will already have done these settings.
" if v:progname =~? "evim"
"   finish
" endif

" Get the defaults that most users want.
" source $VIMRUNTIME/defaults.vim

" Define bundles via Github repos
filetype plugin indent on
filetype on
"制表符
set tabstop=1
"把tab转成空格
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2

set t_Co=256
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Bundle 'Shougo/deoplete.nvim'
" Bundle 'roxma/nvim-yarp'
" Bundle 'roxma/vim-hug-neovim-rpc'
" Bundle 'evanmiller/nginx-vim-syntax'
" Bundle 'klen/python-mode'
" Bundle 'SuperTab'
" Bundle 'https://github.com/vim-scripts/pydoc.vim.git'
" Bundle 'https://github.com/Shougo/unite.vim.git'
" Bundle 'joshdick/onedark.vim'  
" Bundle 'https://github.com/zivyangll/git-blame.vim.git'
" Bundle 'othree/html5.vim'
" Bundle 'jelera/vim-javascript-syntax;
" Bundle 'hdima/python-syntax'
" Bundle 'drewtempelmeyer/palenight.vim' 
" Bundle 'ayu-theme/ayu-vim'
" Bundle 'morhetz/gruvbox'
" Bundle 'Raimondi/delimitMate'
" Bundle 'groenewege/vim-less'
" Bundle 'xsbeats/vim-blade'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'tpope/vim-rails'
" Bundle 'croaky/vim-colors-github'
" Bundle 'christoomey/vim-run-interactive'
" Bundle 'thoughtbot/vim-rspec'
" Bundle 'vim-ruby/vim-ruby'
" Bundle 'mattn/emmet-vim'
" Bundle 'msanders/snipmate.vim'
" Bundle 'vim-scripts/matchit.zip'
" Bundle 'https://github.com/rkulla/pydiction.git'
" Bundle 'slim-template/vim-slim'
" Bundle 'godlygeek/tabular'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'tomasr/molokai'
" Bundle 'pbrisbin/vim-mkdir'
" Bundle 'http://www.vim.org/scripts/download_script.php?src_id=7805'
" Bundle 'tpope/vim-surround'
" Bundle 'file:///home/cuiyunpeng/.vim/bundle/vim-pdb'
" Bundle 'nvie/vim-flake8' 
" Bundle 'scrooloose/syntastic'
" Plugin 'isnowfy/python-vim-instant-markdown'
" Bundle 'yuttie/hydrangea-vim'
" Bundle 'KKPMW/sacredforest-vim'
" Bundle 'lifepillar/vim-gruvbox8'
" Bundle 'liuchengxu/space-vim-theme'
" Bundle 'mtth/locate.vim'
" Bundle 'mbbill/echofunc'
" Bundle 'davidhalter/jedi-vim'
" Bundle 'dense-analysis/ale'
" Bundle 'w0rp/ale'
" Bundle 'mtth/scratch.vim'
Bundle 'yuratomo/w3m.vim'
Bundle 'a.vim'
Bundle 'vim-scripts/DrawIt.git'
Bundle 'plasticboy/vim-markdown'
Bundle 'http://sourceforge.net/projects/vimcdoc/files/vimcdoc'
Bundle 'terryma/vim-expand-region'
Bundle 'iamcco/dict.vim'
Bundle 'ycm-core/YouCompleteMe'
Bundle 'godlygeek/tabular'
Bundle 'jiangmiao/auto-pairs'
Bundle 'sillybun/vim-repl' 
Bundle 'xifeng205/vim-powerful'
Bundle 'skywind3000/asyncrun.vim'
Bundle 'heavenshell/vim-pydocstring'
Bundle 'majutsushi/tagbar'
Bundle 'vim-utils/vim-man'
Bundle 'kien/ctrlp.vim'
Bundle 'Yggdroot/LeaderF'
Bundle 'Yggdroot/indentLine'
Bundle 'Yggdroot/LeaderF-marks'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'justinmk/vim-sneak'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/tComment'
Bundle 'Lokaltog/vim-powerline'

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif
" if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  " set hlsearch
" endif

" Only do this part when compiled with support for autocommands.
" if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  " augroup vimrcEx
  " au!
"打开vim的文件类型自动检测功能
" filetype plugin indent on
" filetype on
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=80
  " augroup END
" else
  " set autoindent		" always set autoindenting on
" endif " has("autocmd")

" 恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 命令行于状态行
" set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
set ch=1
" set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]\ %l,%c\ %=\ %P
"
" 始终显示状态行
set ls=2 

" 折叠保存设置"
" au BufWinLeave * silent  mkview
" au BufWinEnter * silent  loadview

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards " compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
" if has('syntax') && has('eval')
  " packadd! matchit
" endif

let mapleader = ","  " map leader键设置
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]', 'tags', 'cscope.*']
            \}
" " popup mode
" " let g:Lf_WindowPosition = 'popup'
" " let g:Lf_PreviewInPopup = 1
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
" let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
"
let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>f9 :pwd<CR>
noremap <leader>f0 :cd -<CR>
noremap <leader>f1 :cd ../<CR>
noremap <leader>f2 :cd ../../<CR>
noremap <leader>f3 :cd ../../../<CR>
noremap <leader>f4 :cd ../../../../<CR>
noremap <leader>f5 :cd ../../../../../<CR>

noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fc :<C-U><C-R>=printf("Leaderf tag %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf function %s", "")<CR><CR>
noremap <leader>fh :<C-U><C-R>=printf("Leaderf cmdHistory %s", "")<CR><CR>
"
" noremap <leader>fB :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" noremap <leader>fM :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" noremap <leader>fT :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fL :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
" noremap <leader>fH :<C-U><C-R>=printf("Leaderf function %s", "")<CR><CR>
"
"
" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
" noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" " search visually selected text literally
" xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
" noremap go :<C-U>Leaderf! rg --recall<CR>
"
" " should use `Leaderf gtags --update` first
" let g:Lf_GtagsAutoGenerate = 0
" let g:Lf_Gtagslabel = 'native-pygments'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
"

"  CTRIP配置
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=25
let g:ctrlp_match_window_reversed=0
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|tags)$',
    \ }
" let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          " \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_mruf_max=50

map <leader>m :CtrlPMRU<CR>
map <leader>q :CtrlPQuickfix<CR>
map <leader>a :CtrlPBookmarkDirAdd<CR>
map <leader>b :CtrlPBookmarkDir<CR>

"git blame
" nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" vim-multiple-cursors config
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-P>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" " vim-expand-region
" let g:expand_region_text_objects = {
"       \ 'iw'  :0,
"       \ 'iW'  :0,
"       \ 'i"'  :0,
"       \ 'i''' :0,
"       \ 'i]'  :1,
"       \ 'ib'  :1,
"       \ 'iB'  :1, 
"       \ 'il'  :0, 
"       \ 'ip'  :0,
"       \ 'ie'  :0, 
"       \ }
"
"vim sneak f f T t motion
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

"novcomplete config
" let g:deoplete#enable_at_startup = 1
"supertab config
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止
" let g:SuperTabDefaultCompletionType="context"
" let g:SuperTabRetainCompletionType=2

let python_highlight_all = 1

"如果设置为compatible，则tab将不会变成空格
set nocompatible
"设置鼠标运行模式为WINDOWS模式
" behave mswin

"设置菜单语言
" set encoding=chinese
set langmenu=zh_CN.UTF-8

" =========
" 获取当前目录
" func GetPWD()
"     return substitute(getcwd(), "", "", "g")
" endf
"
" =====================
" 多语言环境
"    默认为 UTF-8 编码
" =====================
if has("multi_byte")
    set encoding=utf-8
    " English messages only
    "language messages zh_CN.utf-8

    " if has('win32')
        " language english
        " let &termencoding=&encoding
    " endif

    " set fencs=utf-8,gbk,chinese,latin1
    set fileencodings=utf-8,gbk,gb18030,gb2312,cp1252,utf-16le,iso-8859-15,cp936,ucs-bom,
    set formatoptions+=mM
    set nobomb " 不使用 Unicode 签名

    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

set clipboard=unname

" 保留历史记录
set history=40

set nocompatible
set wrap

" 行号和标尺
set nu
" set ruler
" set rulerformat=%15(%c%V\ %p%%%)

"" diplay the command on right window
" set showcmd

" 控制台响铃
:set noerrorbells
:set novisualbell
:set t_vb= "close visual bell

" 插入模式下使用 <BS>、<Del> <C-W> <C-U>
 set backspace=indent,eol,start

" 缩进 智能对齐方式
set autoindent
set smartindent

"语法高亮
syntax enable
syntax on

"设置配色
" set guifont=Courier\ New:h12
colorscheme desert

"设定文件浏览器目录为当前目录
set bsdir=buffer

" 自动切换到文件当前目录
" let g:expand_region_text_objects = {
set autochdir

"在查找时忽略大小写
set ignorecase
set incsearch
set hlsearch

"设置命令行的高度
" set cmdheight=1

"显示匹配的括号
" set showmatch

"增强模式中的命令行自动完成操作
set wildmenu

"使PHP识别EOT字符串
"hi link phpheredoc string
"php语法折叠
"let php_folding = 1
"允许在有未保存的修改时切换缓冲区
set hidden

"实现全能补全功能，需要打开文件类型检测
filetype plugin indent on

"保存文件的格式顺序
set fileformats=unix,dos

"置粘贴模式，这样粘贴过来的程序代码就不会错位了。
" set paste

"在所有模式下都允许使用鼠标，还可以是n,v,i,c等
set mouse=

"modify serarch hlight
hi Search  term=bold ctermbg=4 guibg=DarkBlue
hi cBracket   term=bold ctermfg=5 guifg=navajowhite

"============快捷键===================================  
nmap<F5>d :Dict  
nmap <F5>x :normal cd<CR>:!nohup xdg-open  <C-R>=expand("<cfile>")<CR> > /dev/null &<CR><CR> 
map <F5>n :!nohup nautilus . > /dev/null & <CR><CR>
" map <F5>sm :!nohup smplayer  > /dev/null &<CR> <CR>
map <F5>wn :term ++close watch -n 1 nvidia-smi<CR>
" imap // <esc>a / 
" imap %% <esc>a % 
" imap ** <esc>a * 
" imap &&& <esc>a && 
" imap ++ <esc>a + 
" imap -- <esc>a - 
" imap === <esc>a = 
" imap <<< <esc>a << 
" imap >> <esc>a > 
"

nmap 0M :Vman <C-R>=expand("<cword>")<CR><CR>
nmap 0m :Man <C-R>=expand("<cword>")<CR><CR>

map <F6>mm :MakeMake<cr> 
map <F6>mc :MakeClean<cr>
map <F6>mr :MakeRun<cr> 
map <F6>mq :QMakeRun<cr> 
map <F6>mp :RunPython<cr> 

nnoremap <F6><F6> :!rm %<<cr>:!clear<cr>:CompileRun<cr>
nnoremap <F6>6 :copen<cr>
nnoremap <F6>7 :ccl<cr>
nnoremap <F6>8 :AsyncStop<cr>:ccl<cr>
nnoremap <F6>9 :CompileC<cr>

nmap <F6>d :normal cd<CR>:!nohup designer <C-R>=expand("<cfile>")<CR> > /dev/null &<CR> 
nmap <F6>a :!nohup assistant -show index  > /dev/null &<CR> 

" nmap <F6>f :!nohup firefox  > /dev/null &<CR> <CR>
nmap gb :!nohup firefox www.baidu.com >  /dev/null & <CR><CR>
nmap gS :!nohup firefox -search  <C-R>=expand("<cword>")<CR> >  /dev/null & <CR><CR>
nmap gw :set iskeyword +=/,:,.<cr> :!nohup firefox   <C-R>=expand("<cword>")<CR> >  /dev/null & <CR><CR> :set iskeyword-=/,:,.<cr>  
map gn :tabnew <cfile><cr> 
map tn :tabnext<cr>
map tp :tabprevious<cr>
map tc :tabclose<cr>
nmap gh :help   <C-R>=expand("<cword>")<CR><CR>
" nmap ge :normal cd<CR>:!nohup evince <C-R>=expand("<cfile>")<CR> > /dev/null &<CR> 

nmap ge :normal cd<CR>:!nohup okular <C-R>=expand("<cfile>")<CR> > /dev/null &<CR> 
" nmap gE :!nohup evince > /dev/null &<CR> 
" nmap gL :normal cd<CR>:!nohup libreoffice <C-R>=expand("<cfile>")<CR> > /dev/null  &<CR> 

nmap 0g :grep! <C-R>=expand("<cword>")<CR> ./* -nrw <CR> 
nmap 0v :vimgrep <C-R>=expand("<cword>")<CR> ./* <CR>
nmap 0y :!nohup firefox  http://dict.youdao.com/search?q=<C-R>=expand("<cword>")<CR> >  /dev/null &<cr>  
map 0x  :ls<CR>:bd 
map 0j  :ls<CR>:sb 
nmap 0t :!goldendict  <C-R>=expand("<cword>")<CR><CR> <CR>
vmap 0t :!goldendict  <C-R>=expand("<cword>")<CR><CR> <CR>
nmap 0T :!nohup goldendict > /dev/null &<CR> <CR>
map  0K :!killall goldendict <CR> 

map 0bl :set scrollbind<CR><c-w>l:set scrollbind<CR><c-w>h
map 0bh :set scrollbind<CR><c-w>h:set scrollbind<CR><c-w>l
map 0bj :set scrollbind<CR><c-w>j:set scrollbind<CR><c-w>k
map 0bk :set scrollbind<CR><c-w>k:set scrollbind<CR><c-w>j

map 0Bl :set noscrollbind<CR><c-w>l:set noscrollbind<CR><c-w>h
map 0Bh :set noscrollbind<CR><c-w>h:set noscrollbind<CR><c-w>l
map 0Bj :set noscrollbind<CR><c-w>j:set noscrollbind<CR><c-w>k
map 0Bk :set noscrollbind<CR><c-w>k:set noscrollbind<CR><c-w>j

nmap <F6>c :normal cd<CR>:!nohup /home/cuiyunpeng/tools/Qt5.14.2/Tools/QtCreator/bin/qtcreator <C-R>=expand("<cfile>")<CR> > /dev/null &<CR> 

"标签相关的快捷键 Ctrl
"在文件名上按gf时，在新的tab中打开
map <leader>-  :set iskeyword-=
map <leader>=  :set iskeyword+=
imap <c-l> <esc>la
imap <c-f> <esc>ha
map j <c-w>wj<c-w>p
map k <c-w>wk<c-w>p
map b <c-w>bj<c-w>p
map v <c-w>bk<c-w>p

map <c-w>B <c-w>b<c-w>k
"==== F2 NERDTree 切换 ====
let NERDTreeWinSize=33
"map ntree :NERDTree <cr>
map gj :NERDTreeToggle<CR>
" let NERDTreeWinPos="right"
map <F2> :NERDTreeToggle<CR>
"==== F3 Tag list 切换 ====
map <silent> <F3> :TagbarToggle<cr>
map <silent> <F4> :terminal<cr>
map <silent> <F7> :vert terminal ++close tmux<cr>

map <F1>l <c-w>l<c-w>q
map <F1>k <c-w>k<c-w>q
map <F1>j <c-w>j<c-w>q
map <F1>h <c-w>h<c-w>q

set pastetoggle=<F10>

"系统时间
 map <F12> :echo strftime("%c")<CR><
"source vimrc
 map <F12>s :so ~/.vimrc<CR>
" markdown config
set conceallevel=2
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 1             
" let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_frontmatter = 1
" let g:vim_markdown_auto_extension_ext = 'txt'
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_folding_style_pythonic = 1
map <F12>me :set conceallevel=0<cr>
map <F12>ms :set conceallevel=2<cr>

" 返回当前时间
" func! GetTimeInfo()
    " return strftime('%Y-%m-%d %A %H:%M:%S')
    " return strftime('%Y-%m-%d %H:%M:%S')
" endfunction

" 插入模式按 Ctrl + D(ate) 插入当前时间
" imap <C-d> <C-r>=GetTimeInfo()<cr>

"缺省不产生备份文件
set nobackup
set nowritebackup
set nonu
" autoload _vimrc
" autocmd! bufwritepost _vimrc source %

"cscope 配置
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set cscopequickfix=s-,c-,d-,i-,t-,e-,a-,g-
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
elseif filereadable("../cscope.out")
      cs add ../cscope.out
  elseif filereadable("../../cscope.out")
      cs add ../../cscope.out
  elseif filereadable("../../../cscope.out")
      cs add ../../../cscope.out
  elseif filereadable("../../../../cscope.out")
      cs add ../../../../cscope.out
  elseif filereadable("../../../../../cscope.out")
      cs add ../../../../../cscope.out
  elseif filereadable("../../../../../../cscope.out")
      cs add ../../../../../../cscope.out
  elseif filereadable("../../../../../../../cscope.out")
      cs add ../../../../../../../cscope.out
  elseif filereadable("../../../../../../../../cscope.out")
      cs add ../../../../../../../../cscope.out
  elseif filereadable("../../../../../../../../../cscope.out")
      cs add ../../../../../../../../../cscope.out
  elseif filereadable("../../../../../../../../../../cscope.out")
      cs add ../../../../../../../../../../cscope.out
  endif
  set csverb
endif

nmap <C-l>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-l>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-l>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-l>S :cs find s 
nmap <C-l>A :cs find a 
nmap <C-l>G :cs find g 
nmap <C-l>C :cs find c 
nmap <C-l>T :cs find t 
nmap <C-l>E :cs find e 
nmap <C-l>F :cs find f 
nmap <C-l>I :cs find i 
nmap <C-l>D :cs find d 

"ctag 配置
set tags=tags;/

" txt config"
" autocmd FileType *.txt pset filetype=cnx 
" autocmd FileType *.txt 
" if &filetype == "text" set linebreak
" set textwidth=80
" set isk=!-~,^*,^\|,^\
" set isk+=_
" endif

"pydoc
" nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

" pydiction_location 
" let g:pydiction_location = '/home/cuiyunpeng/.vim/bundle/pydiction/complete-dict'
" let g:pydiction_menu_height = 3

"代码折叠
"设置折叠模式
"" 自动重新读入
set autoread
set foldmethod=indent

"启动时不要自动折叠代码
set foldlevel=100
"依标记折叠
"set foldmethod=marker
" set foldcolumn=4
"光标遇到折叠，折叠就打开
set foldopen=all
"移开折叠时自动关闭折叠
set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN
"依缩进折叠
"   manual  手工定义折叠
"   indent  更多的缩进表示更高级别的折叠
"   expr    用表达式来定义折叠
"   syntax  用语法高亮来定义折叠
"   diff    对没有更改的文本进行折叠
"   marker  对文中的标志折叠

"ale
"始终开启标志列
" let g:ale_sign_column_always=1
" let g:ale_set_highlights = 1
"自定义error和warning图标
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
" let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
" "显示Linter名称,出错或警告等相关信息
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:airline#extensions#ale#enabled = 1
" Write this in your vimrc file
" let g:ale_lint_on_text_changed = 1 
" let g:ale_lint_on_insert_leave = 1
" You can disable this option too
" if you don't want linters to run on opening a file
" let g:ale_lint_on_enter=1
"
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
" nmap sp <Plug>(ale_previous_wrap)
" nmap sn <Plug>(ale_next_wrap)
" <Leader>s触发/关闭语法检查
" nmap <Leader>8 :ALEToggle<CR>
" <Leader>d查看错误或警告的详细信息
" nmap <Leader>2 :ALEDetail<CR>
" let g:ale_python_pylint_executable = 'python'   " or 'python' for Python 2
" let g:ale_python_pylint_options = '--rcfile ~/.vim/pylint.rc'
" The virtualenv detection needs to be disabled.
" let g:ale_python_pylint_use_global = 1


" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
" let g:ale_linters = {
"  \   'c++': ['clang'],
"  \   'c': ['clang'],
"  \   'python': ['pylint'], }
" let g:ale_linters={'python':'pylint'}
 
"------------------------END ale.vim--------------------------------------
" Todo           xxx term=standout ctermfg=0 ctermbg=11 guifg=orangered guibg=yellow2
"todo config
highlight  Todo term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow      
" YCM 配置
highlight YcmErrorSection ctermfg=88 ctermbg=233 guifg=#870000 guibg=#121212
highlight YcmWarningSection term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow      
highlight SignColumn ctermfg=none ctermbg=none guifg=#262626 guibg=#121212
" highlight SignColumn ctermfg=235 ctermbg=233 guifg=#262626 guibg=#121212
" highlight SignColumn ctermfg=22 ctermbg=22 guifg=#005f00 guibg=#005f00
" highlight SignColumn ctermfg=248 ctermbg=237 guifg=darkgrey guibg=black

" highlight YcmErrorSection term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=gray guibg=#5f0000
" highlight YcmErrorSection ctermfg=160 ctermbg=52 guifg=#d70000 guibg=#5f0000
let g:ycm_confirm_extra_conf = 1
" let g:ycm_server_python_interpreter='/usr/bin/python3.8'
"
" let g:ycm_python_interpreter_path = '/home/cuiyunpeng/tools/anaconda3/bin/'                   
" let g:ycm_python_sys_path = []
" let g:ycm_extra_conf_vim_data = [
  " \  'g:ycm_python_interpreter_path',
  " \  'g:ycm_python_sys_path'
  " \]
"
" let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" let g:ycm_use_clangd = 1
" let g:ycm_clangd_binary_path = '/usr/bin/clangd'

" YouCompleteMe
" Python Semantic Completion
" C family Completion Path
" 停止提示是否载入本地ycm_extra_conf文件
" 语法关键字补全
" let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
" let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
" let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
" let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
" let g:ycm_key_list_stop_completion = ['<C-y>']
" 禁用语法检查l    
let g:ycm_show_diagnostics_ui = 1                          
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_enable_diagnostic_highlighting = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
" let g:ycm_min_num_of_chars_for_completion=1
" 在注释输入中也能补全
" let g:ycm_semantic_triggers =  {
			" \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			" \ 'cs,lua,javascript': ['re!\w{2}'],
			" \ } 
" let g:ycm_filetype_whitelist = {
			" \ "c":1,
			" \ "cpp":1,
			" \ "python":1,
			" \ "objc":1,
			" \ "sh":1,
			" \ "zsh":1,
			" \ "zimbu":1,
			" \ }

" 跳转快捷键
nnoremap <c-h> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-j> :YcmCompleter GoToDefinition<CR>| 
nnoremap <c-k> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
nnoremap <c-l> :YcmCompleter GoToReferences<CR>|
nnoremap 0d :YcmCompleter GetDoc<CR><c-w>t|
nnoremap 0F :YcmCompleter FixIt<CR>
nnoremap 0r :YcmCompleter RefactorRename |
vnoremap 0f :YcmCompleter Format<CR>|
noremap 0f :YcmCompleter Format<CR>|
" nnoremap 0F :YcmFormat<CR>|
" ====================================================================="
"jedi-vim-configuration*
" let g:jedi#auto_close_doc=1
" let g:jedi#popup_select_first 
" let g:jedi#auto_initialization=0
" let g:jedi#show_call_signatures=0
" let g:jedi#auto_vim_configuration=0
" let g:jedi#completions_enablekd=0
" let g:jedi#smart_auto_mappings=0
" let g:jedi#popup_on_dot=0   
"

" " Plugin syntastic settings.
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': []}
" " Use pylint to check python files.
" let g:syntastic_python_checkers = ['pylint']
" " map <F5> :SyntasticToggleMode<CR> :SyntasticCheck<CR>
"
" " Ignore warnings about newlines trailing.
" let g:syntastic_quiet_messages = { 'regex': ['trailing-newlines', 'invalid-name',
"     \'too-many-lines', 'too-many-instance-attributes', 'too-many-public-methods',
"     \'too-many-locals', 'too-many-branches'] }
" autoload _vimrc
" autocmd! bufwritepost $HOME/.vimrc source %
set completeopt=popup
" let g:Powerline_colorscheme = 'solarized256'
"
"translate config
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
let g:w3m#command = '/usr/bin/w3m'
let g:w3m#history#save_file = '/home/cuiyunpeng/.vim/.vim_w3m_hist'

let g:repl_program = {
            \   'python': 'ipython',
            \   'default': 'zsh',
            \   'r': 'R',
            \   'lua': 'lua',
            \   }
let g:repl_predefine_python = {
            \   'numpy': 'import numpy as np',
            \   'matplotlib': 'from matplotlib import pyplot as plt'
            \   }
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_position = 3
" let g:repl_ipython_version = '7'

"vim-repl configure
autocmd Filetype python nnoremap <leader>1 :REPLToggle<Cr>
autocmd Filetype python nnoremap <leader>2 :REPLDebug<Cr>
autocmd Filetype python nnoremap <leader>3 <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <leader>4 <Esc>:REPLSendAll<Cr>
autocmd Filetype python nnoremap <leader>l <Esc>:REPLPDBS<Cr>
autocmd Filetype python nnoremap <leader>h <Esc>:REPLPDBC<Cr>
autocmd Filetype python nnoremap <leader>j <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <leader>k <Esc>:REPLPDBU<Cr>
autocmd Filetype python imap <leader>w <esc><leader>w
autocmd Filetype python map l <c-w>lclear<cr><c-w>h
set cursorline
" set cursorcolumn
highlight CursorLine term=bold cterm=bold ctermfg=none  
" highlight CursorColumn term=bold cterm=bold ctermfg=none  
" highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=235 
" highlight CursorColumn term=bold cterm=bold ctermfg=none ctermbg=none
highlight PMenu ctermfg=243 ctermbg=235 guifg=black guibg=darkgrey
" highlight PMenu ctermfg=none ctermbg=none guifg=black guibg=#004b60
highlight PMenuSel ctermfg=245 ctermbg=237 guifg=darkgrey guibg=black
" highlight quickfixline ctermfg=249 ctermbg=235 guifg=black guibg=darkgrey
highlight quickfixline term=bold cterm=bold ctermfg=none  
"auto-pair config
" let g:AutoPairsFlyMode = 1
" MatchParen     xxx term=reverse ctermbg=6 guibg=DarkCyan
highlight MatchParen ctermfg=117 ctermbg=24 guifg=#87d7ff guibg=#005f87
" highlight MatchParen ctermfg=231 ctermbg=31 guifg=#ffffff guibg=#0087af



