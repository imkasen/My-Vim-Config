"" vim-airline-theme
let g:airline_theme = 'violet'

"" vim-airline
let g:airline_powerline_fonts = 1                                        " Powerline 字体支持 
let g:airline#extensions#tabline#enabled = 1                             " 打开 tabline 
let g:airline#extensions#tabline#left_sep = ' '       
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enable = 0                           " 关闭空白符检测
let g:airline#entensions#tabline#formatter = 'default'