" PATH
" ~/.config/nvim/init.vim
"======= User Setting =======
syntax on
filetype on
filetype indent on

set enc=utf8
set showcmd		
set mouse=a 	"可以在buffer的任何地方使用鼠标
set history=40	"默认命令记录是20条
set ruler relativenumber
set scrolloff=3
set backspace=indent,eol,start
set incsearch smartcase 
set expandtab 	"将<tab>符号替换为<space>符号
set softtabstop=4 "令删除tab空格和普通空格的行为不同
set list listchars=eol:¬,tab:▸\ ,trail:.,
set shiftround

set ts=4 		"tabstop 
set sw=4 		"shiftwidth 
set autoindent 	"配合下面一条命令根据不同语言类型进行不同的缩进操作
filetype plugin indent on 
set number
set shell=/usr/bin/fish
set ttimeout ttimeoutlen=0 timeoutlen=1000

"======= Vim Plug =======
call plug#begin()
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'lilydjwg/fcitx.vim'
Plug 'tpope/vim-repeat'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

"====== Plugin Setting =======
"------ Nerd commenter -------
" let mapleader="," "Use ',' instead of mapleader '\'
"////// Nerd commenter ///////

"------ ale -------
"始终开启标志列
let g:ale_sign_column_always=1
let g:ale_set_highlights=0
"自定义error和warning图表
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态下整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"////// ale ///////

"------ markdown ------
"let vim_markdown_preview_github=1
"let vim_markdown_preview_browser='Google Chrome'
"////// markdown //////
"
"------ youcompeletme ------
"let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"////// youcompeletme //////

"------ easyalign ------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"////// easyalign //////
