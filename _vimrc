"�������
set nocompatible  "������vi
set encoding=utf-8 "���ñ���Ϊutf-8
set t_Co=256  "256ɫ
filetype indent on  "�ļ����ͼ�飬Ϊ�ʵ������ͽ����ʵ�������

"���
set nu
set relativenumber

"����
set cursorline

"״̬��
set showcmd
set showmode
set laststatus=2

"�﷨����
syntax on
set showmatch

"����
set incsearch

"����ӳ��
noremap J 5j
noremap K 5k
noremap _ J
let mapleader="\<space>"
map <leader>s :source $MYVIMRC<CR>
"�Զ����ڴ���
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical res -5<CR>
map <right> :vertical res +5<CR>


"����
colorscheme koehler
