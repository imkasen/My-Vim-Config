-- 自动命令

-- 退出 nvim 后恢复光标形状
-- https://github.com/neovim/neovim/wiki/FAQ#cursor-style-isnt-restored-after-exiting-or-suspending-and-resuming-nvim
vim.cmd([[
  au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
  au VimLeave,VimSuspend * set guicursor=a:ver25-blinkwait175-blinkoff150-blinkon175
]])

-- 普通模式使用混合行号，插入模式使用绝对行号
vim.cmd([[
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
]])

-- 修改 'plugins.lua' 自动更新插件
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- nvim-tree 自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
