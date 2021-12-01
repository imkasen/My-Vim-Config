"" 载入基本配置
source $HOME/My-Vim-Config/base.vim

"" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'projekt0n/github-nvim-theme'
    Plug 'Yggdroot/indentLine'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdcommenter'
    Plug 'luochen1990/rainbow'
call plug#end()

"" github-nvim-theme
let g:github_comment_style = "NONE"
let g:github_keyword_style = "NONE"
let g:github_function_style = "NONE"
let g:github_variable_style = "NONE"
" let g:github_transparent = "true"
colorscheme github_dimmed

"" indentLine
let g:indent_guides_guide_size = 1                                       " 指定对齐线尺寸
let g:indent_guides_start_level = 2                                      " 从第二层开始可视化显示缩进
let g:indentLine_char_list = ['|', '¦', '┆', '┊']                        " 为不同的缩进层级设置不同的缩进线

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

"" nerdcommenter
let g:NERDCreateDefaultMappings = 1                                      " Create default mappings
let g:NERDSpaceDelims = 1                                                " Add spaces after comment delimiters by default                     
let g:NERDCompactSexyComs = 1                                            " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'                                          " Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDAltDelims_java = 1                                           " Set a language to use its alternate delimiters by default
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }  " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1                                          " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1                                     " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1                                        " Enable NERDCommenterToggle to check all selected lines is commented or not 

"" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}

"" restore cursor style after exiting nvim
" https://github.com/neovim/neovim/wiki/FAQ#cursor-style-isnt-restored-after-exiting-or-suspending-and-resuming-nvim
au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
au VimLeave,VimSuspend * set guicursor=a:ver25-blinkwait175-blinkoff150-blinkon175
