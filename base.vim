"" 基础配置
set confirm                  " 在处理未保存或只读文件时，弹出确认提示
set autoread                 " 当前文件在 Vim 外被修改且未重新载入，则自动读取
set number                   " 显示行号
" set relativenumber           " 显示相对行号 
set nocompatible             " 关闭 Vi 兼容模式
set noerrorbells             " 有错误信息时不响铃
set history=50               " 历史记录条数
set cursorline               " 突出显示光标当前行
" set cursorcolumn             " 突出显示光标当前列
set laststatus=2             " 总是显示状态栏
set ruler                    " 显示光标的位置
set textwidth=120            " 设置行宽
set nowrap                   " 超过窗口宽度的行不自动回绕显示
set autochdir                " 自定切换当前目录为当前文件所在的目录
set showmatch                " 显示括号匹配
set showcmd                  " 在屏幕最后一行显示命令
set showmode                 " 在最后一行提示消息
set wildmenu                 " Vim 自身命令行模式智能补全
set t_Co=256                 " 启用 256 色
set nobackup                 " 不创建备份文件
set noswapfile               " 禁止生成 swap 文件
set hidden                   " 终端隐藏后不结束
set lazyredraw               " 延迟绘制，提升性能
set ffs=unix,dos,mac         " 文件换行符，默认使用 unix 换行符
set clipboard+=unnamedplus   " 与系统共用剪切板

"" 代码折叠
" set foldmethod=indent        " 基于缩进进行代码折叠
set foldmethod=syntax        " 基于语法进行代码折叠
set nofoldenable             " 启动 Vim 时关闭折叠代码

"" 查找配置
set hlsearch                 " 高亮显示搜索结果
set incsearch                " 增量搜索
set ignorecase               " 忽略大小写
set smartcase                " 智能搜索

"" Tab 键与缩进配置
set expandtab                " Tab 转空格
set smarttab                 " 使用 shiftwidth
set shiftwidth=4             " 设置自动缩进长度为 4
set softtabstop=4            " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4                " 设定 tab 缩进空格数为 4
set autoindent               " 新增行与前一行具有相同缩进形式
set smartindent              " 类似 cindent
set shiftround               " 缩进列数对齐到 shiftwidth 的整数倍

"" 设置编码
set fileencodings=uft-8
set termencoding=utf-8
set encoding=utf-8

"" 文件类型设置
filetype plugin indent on    " 打开文件类型检测，打开加载文件类型插件，为不同类型文件定义不同缩进格式
syntax enable                " 开启语法高亮
syntax on                    " 允许用指定语法高亮配色方案替换默认方案


"" 按键映射
let mapleader=" "
nnoremap H ^
nnoremap L $
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
inoremap jj <Esc>

