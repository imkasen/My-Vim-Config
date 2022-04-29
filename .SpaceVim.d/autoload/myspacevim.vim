" https://spacevim.org/cn/documentation/#%E5%90%AF%E5%8A%A8%E5%87%BD%E6%95%B0

function! myspacevim#before() abort
    " 定义路径
    let g:root_path = $HOME . '/.SpaceVim.d/'
    let g:config_path = g:root_path . 'config/'

    " 定义载入配置命令
    command! -nargs=1 LoadScript exec 'source ' . g:config_path . '<args>'
    
    " 加载配置
    LoadScript options.vim
    LoadScript keymaps.vim
    if has('nvim')
        LoadScript editors/nvim.vim
    elseif has('vim')
        LoadScript editors/vim.vim
    endif

endfunction

"  function! myspacevim#after() abort
"  endfunction
