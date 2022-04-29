"" 退出 nvim 后恢复光标形状
" https://github.com/neovim/neovim/wiki/FAQ#cursor-style-isnt-restored-after-exiting-or-suspending-and-resuming-nvim
au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
au VimLeave,VimSuspend * set guicursor=a:ver25-blinkwait175-blinkoff150-blinkon175
