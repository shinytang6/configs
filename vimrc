set nocompatible " 关闭 vi 兼容模式
" 设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 显示行号
set number

" 突出显示当前行
set cursorline

" 突出显示当前列, 略丑
" set cursorcolumn

" 启用鼠标
" set mouse=a
" set selection=exclusive
" set selectmode=mouse,key

" 插入括号时, 短暂地跳转到匹配的对应括号, 我觉得没啥用
" set showmatch

" 设置Tab长度为4空格
set tabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4
" 继承前一行的缩进方式，适用于多行注释
"set autoindent
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格

" set paste
set pastetoggle=<F2>
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler

" 打开文件类型检测
filetype plugin indent on
syntax on " 自动语法高亮
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set backspace=indent,eol,start

set noundofile  " 再次打开文件不能使用undo操作
set nobackup  " 覆盖文件时不备份
set swapfile " 防止 同一个文件同时被多次打开
set autochdir " 自动切换当前目录为当前文件所在的目录,这主要用在一个 Vim 会话之中打开多个文件的情况
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
"set nowrapscan " 禁止在搜索到文件两端时重新搜索,我觉得到文件两端可以重新搜索

set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码

set magic " 正则相关
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存. 这样在切换buffer(文件/ta)的时候, 之前编辑的文件就只是切换到后台, 而不是关掉, 所以再切换回来, undo历史仍然在, 可以undo.
set guioptions-=T " 隐藏工具栏, windows下gvim的配置
set guioptions-=m " 隐藏菜单栏, windows下gvim的配置
set smartindent " 开启新行时使用智能自动缩进
set cmdheight=1 " 设定命令行的行数为 1, 默认好像就是1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ "设置在状态行显示的信息

" set foldenable " 开始折叠
" set foldmethod=syntax " 设置语法折叠
" set foldcolumn=0 " 设置折叠区域的宽度
" setlocal foldlevel=1 " 设置折叠层数为

" return OS type, eg: windows, or linux, mac, et.st..
function! MySys()
if has("win16") || has("win32") || has("win64") || has("win95")
return "windows"
elseif has("unix")
return "linux"
endif
endfunction

"map <F5> i{e<Esc>a}<Esc>
inoremap <C-j> <Esc>o
" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l




call plug#begin('~/.vim/plugged')
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tomasr/molokai'
Plug 'jez/vim-better-sml'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
call plug#end()

let g:rainbow_active = 1
"let g:hybrid_transparent_background = 1

set background=dark
"colorscheme molokai
colorscheme hybrid_material
