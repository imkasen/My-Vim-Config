"" 全局路径
let g:dir_name = 'Vime'
let g:root_path = $HOME . '/' . g:dir_name . '/'
let g:config_root_path = g:root_path . 'config/'

"" 定义载入配置命令
command! -nargs=1 LoadScript exec 'source ' . g:config_root_path . '<args>'

"" 载入基本配置
LoadScript base.vim

"" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
    LoadScript plugin-list.vim
call plug#end()

"" github-nvim-theme
" LoadScript plugins/github-nvim-theme.vim

"" Nightfox theme
LoadScript plugins/nightfox.vim

"" coc.nvim
LoadScript plugins/coc.nvim.vim

"" indentLine
LoadScript plugins/indentLine.vim

"" vim-airline
LoadScript plugins/vim-airline.vim

"" nerdcommenter
LoadScript plugins/nerdcommenter.vim

"" rainbow
LoadScript plugins/rainbow.vim

"" restore cursor style after exiting nvim
" https://github.com/neovim/neovim/wiki/FAQ#cursor-style-isnt-restored-after-exiting-or-suspending-and-resuming-nvim
au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
au VimLeave,VimSuspend * set guicursor=a:ver25-blinkwait175-blinkoff150-blinkon175
