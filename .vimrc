"必要配置
noremap J 3j
noremap K 3k
noremap _ J
cmap W w
set cursorline

"显示隐藏字符
"set list
"不显示隐藏字符
"set nolist
"输入法
"set noimdisable

"大小写
"ignore case
"set noic
"set ic

"编码
set encoding=utf-8 "编码设为utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,eus-jp,euc-kr,latin1 "文件编码依次尝试格式

"缩进
set tabstop=4
set shiftwidth=4
set autoindent

"侧边
set nu
"set relativenumber

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
let mapleader = "\<space>"
noremap <leader>so :source $MYVIMRC<CR>
noremap <leader>si :tabe ~/.vimrc<CR>
noremap <leader>xx :%!xxd<CR>
noremap <leader>xr :%!xxd<space>-r<CR>

"自动调节窗口
"noremap <up> :res +5<CR>
"noremap <down> :res -5<CR>
"noremap <left> :vertical res -5<CR>
"noremap <right> :vertical res +5<CR>
noremap <up> <C-y>
noremap <down> <C-e>

"编译运行
"pthread
noremap <leader>1 :!clear && gcc -g % -o %:r -pthread && ./%:r<CR>
noremap <leader>2 :!clear && gcc -g % -o %:r -pthread && gdb %:r<CR>

noremap <leader>r :!clear && gcc -g % -o %:r && ./%:r<CR>
noremap <leader>R :!clear && gcc -g % -o %:r && ./%:r > temp && less temp<CR>
noremap <leader>p :!python %:r.py<CR>
"编译调试
noremap <leader>g :!gcc -g % -o %:r && gdb ./%:r<CR>
"termdebug
:packadd termdebug
noremap <leader>G :!gcc -g % -o %:r<CR>:Termdebug %:r<CR>
"引号补全
"inoremap [ []<esc>i
"inoremap < <><esc>i
"inoremap " ""<esc>i
"inoremap ' ''<esc>i
"inoremap { {}<esc>i

"ctags
noremap <leader>t :!ctags -R .<CR><CR>
