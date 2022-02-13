"""""""""""""""""""""""""""""""""""""""
" 一些通用的自定义函数放到这里
"""""""""""""""""""""""""""""""""""""""

function! functions#HasInstall(plugName) abort
    " 判断插件是否已经安装在本地
    return (isdirectory(g:plugs[a:plugName].dir) ? v:true : v:false)    
endfunction
