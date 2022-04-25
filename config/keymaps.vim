"" 按键映射

" 空格键作为 leader 键
let mapleader=" "

" 跳到行首
nnoremap H ^
" 跳到行尾
nnoremap L $

nnoremap <leader>q :q<CR>   " 退出 Nvim
nnoremap <leader>qb :bd<CR> " 退出 buffer
nnoremap <leader>w :w<CR>   " 保存

nnoremap <C-v> <C-w>v " 垂直分割窗口到右侧
nnoremap <C-s> <C-w>s " 横向分割窗口到下侧

" 光标在分屏间跳转
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffer 间跳转
nnoremap <A-l> :bnext<CR>
nnoremap <A-h> :bprevious<CR>

inoremap jk <Esc> " 退出 insert 模式返回到 normal 模式
