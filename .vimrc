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
"垂直划分
noremap <leader>sp :let g:netrw_browse_split=1<CR>
"水平划分
noremap <leader>vs :let g:netrw_browse_split=2<CR>

"用gcc编译运行
noremap <leader>r :!gcc -g % -o %:r && ./%:r<CR>
"用gdb调试
noremap <leader>g :!gcc -g % -o %:r && gdb ./%:r<CR>
