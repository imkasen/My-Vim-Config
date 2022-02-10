"" vimrc 所在根目录
let g:vim_root_path = fnamemodify($MYVIMRC, ':h') . '/'
"" 配置所在根目录
let g:config_root_path = g:vim_root_path . 'config/'
"" 插件配置所在目录
let g:plugins_config_root_path = g:config_root_path . 'plugins/'

