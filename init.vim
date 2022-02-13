"" 载入变量
exec "source " . fnamemodify($MYVIMRC, ':h') . "/config/args.vim"

"" 定义载入配置命令
command! -nargs=1 LoadScript exec 'source ' . g:config_root_path . '<args>'

"" 载入基本配置
LoadScript base.vim

"" 载入按键映射配置
LoadScript keymaps.vim

"" 载入编辑器配置
LoadScript editors/nvim.vim

"" vim-plug 载入插件
call plug#begin('~/.local/share/nvim/plugged')
    LoadScript plugin-list.vim
call plug#end()

"" 载入主题配置
" LoadScript themes/github-nvim-theme.vim
LoadScript themes/nightfox.vim

"" coc.nvim
LoadScript plugins/coc.nvim.vim

"" indentLine
" LoadScript plugins/indentLine.vim

"" vim-airline
LoadScript plugins/vim-airline.vim

"" nerdcommenter
" LoadScript plugins/nerdcommenter.vim

"" rainbow
LoadScript plugins/rainbow.vim

" 根据插件名字载入对应配置
function s:source_config(plugName) abort
    let l:config_path = g:plugins_config_root_path . a:pluginName . ".vim"
    if filereadable(l:config_path)
        exec "source" fnameescape(l:config_path)
    endif
endfunction

" 载入插件配置
" for [plugName, _] in items(g:plugs)
"     if common#functions#HasInstall(plugName)
"         call s:source_config(plugName)
"     endif
" endfor
