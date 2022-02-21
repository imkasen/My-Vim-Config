"" init.vim 所在根目录
let g:nvim_root_path = fnamemodify($MYVIMRC, ':h') . '/'
"" 配置所在根目录
let g:config_root_path = g:nvim_root_path . 'config/'
"" 插件配置所在目录
let g:plugins_config_root_path = g:config_root_path . 'plugins/'
let g:other_config_root_path = g:config_root_path . "other/"
"" 插件、缓存等数据根目录
let g:cache_root_path = $HOME . '/.cache/nvim/'
"" 插件安装目录
let g:plugins_install_path = g:cache_root_path . 'plugins/'
