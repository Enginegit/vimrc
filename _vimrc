"必要配置
noremap J 5j
noremap K 5k
noremap _ J
cmap W w
set cursorline

"插件配置
set nocompatible  "不兼容vi
set t_Co=256  "256色
filetype plugin indent on  "文件类型检查，为适当的类型进行适当的缩进
"call plug#begin('~/vimfiles/plugged')
"Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
"Plug 'ycm-core/YouCompleteMe'
"call plug#end()
"let g:instant_markdown_browser="chrome"

"输入法
"set noimdisable

"编码
set encoding=utf-8 "编码设为utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,eus-jp,euc-kr,latin1 "文件编码依次尝试格式

"缩进
set tabstop=4
set autoindent

"侧边
set nu
set relativenumber

"主题
colorscheme koehler

"状态栏
set showcmd
set showmode
set laststatus=2

"语法高亮
syntax on
set showmatch

"搜索
set incsearch

"按键映射
noremap <leader>so :source $MYVIMRC<CR>
noremap <leader>si :tabe ~/_vimrc<CR>
"自动调节窗口
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical res -5<CR>
noremap <right> :vertical res +5<CR>

"编译运行
noremap <leader>r :!gcc -g % -o %:r && %:r<CR>
noremap <leader>p :!%:r.py<CR>
"编译调试
noremap <leader>g :!gcc -g % -o %:r && gdb %:r<CR>
"termdebug
:packadd termdebug
noremap <leader>G :!gcc -g % -o %:r<CR>:Termdebug %:r<CR>

"path
:set path+=~/py/**
:set path+=~/js/**
:set path+=~/md/**
:set path+=~/source/repos/**
:set path+=~/vimfiles/**

"markdown
"imap <C-I> ******<C-o>3h
"imap <C-b> ****<C-o>2h
"imap <C-i> **<C-o>h
"imap <C-u> <u></u><C-o>4h
"imap <C-~> ``<C-o>h
"imap <C-k> []()<C-o>3h
