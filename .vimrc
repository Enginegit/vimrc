"插件配置
set nocompatible  "不兼容vi
set encoding=utf-8 "编码设为utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,eus-jp,euc-kr,latin1 "文件编码依次尝试格式
set t_Co=256  "256色
filetype indent on  "文件类型检查，为适当的类型进行适当的缩进

"侧边
set nu
set relativenumber

"美化
set cursorline

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
noremap J 5j
noremap K 5k
noremap _ J
let mapleader="\<space>"
noremap <leader>so :source $MYVIMRC<CR>
"自动调节窗口
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical res -5<CR>
noremap <right> :vertical res +5<CR>

"主题
colorscheme koehler

"netrw
let g:netrw_liststyle=3
noremap <leader>v :let g:netrw_winsize=50<CR>:let g:netrw_browse_split=0<CR>:Vex<CR>
noremap <leader>V :let g:netrw_winsize=15<CR>:let g:netrw_browse_split=4<CR>:Vex<CR>
"在当前窗口打开
noremap <leader>lo :let g:netrw_browse_split=0<CR>
"垂直划分
noremap <leader>sp :let g:netrw_browse_split=1<CR>
"水平划分
noremap <leader>vs :let g:netrw_browse_split=2<CR>
"新建标签页打开
noremap <leader>ne :let g:netrw_browse_split=3<CR>
"在前一个窗口打开
noremap <leader>la :let g:netrw_browse_split=4<CR>

"编译运行
noremap <leader>r :!gcc -g % -o %:r && ./%:r<CR>
"编译调试
noremap <leader>g :!gcc -g % -o %:r && gdb ./%:r<CR>

"termdebug
:packadd termdebug
noremap <leader>G :!gcc -g % -o %:r<CR>:Termdebug %:r<CR>

"窗口转换
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l
