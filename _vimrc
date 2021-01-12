"插件配置
set nocompatible  "不兼容vi
set encoding=utf-8 "设置编码为utf-8
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
map <leader>s :source $MYVIMRC<CR>
"自动调节窗口
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical res -5<CR>
map <right> :vertical res +5<CR>


"主题
colorscheme koehler
