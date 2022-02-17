"" coc.nvim
" https://github.com/neoclide/coc.nvim

" coc-settings.json 所在目录
let g:coc_config_home = g:other_config_root_path

" coc.nvim 插件列表，可根据需要进行删减
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions
let g:coc_global_extensions = [
  \ 'coc-marketplace',
  \ 'coc-clangd',
  \ 'coc-cmake',
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-go',
  \ 'coc-highlight',
  \ 'coc-markdownlint',
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-sh',
  \ 'coc-vimlsp',
  \ 'coc-xml',
  \ 'coc-yaml'
  \ ]

" ===================================

" example settings: 
" https://github.com/neoclide/coc.nvim#example-vim-configuration

" tab 触发补全或者选择下一个补全
" shift tab 选择上一个补全
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" 检查当前光标前面是不是空白字符
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)         " 跳转到定义
nmap <silent> gy <Plug>(coc-type-definition)    " 跳转到类型定义
nmap <silent> gi <Plug>(coc-implementation)     " 跳转到实现
nmap <silent> gr <Plug>(coc-references)         " 跳转到引用
