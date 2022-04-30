" ================= Options ==========================
"" 基础配置
set autochdir              " 自定切换当前目录为当前文件所在的目录
set autoread               " 当前文件在 Vim 外被修改且未重新载入，则自动读取
set autowrite              " 自动写回
set clipboard+=unnamedplus " 与系统共用剪切板
set cmdheight=2            " 设定命令行行数
set confirm                " 在处理未保存或只读文件时，弹出确认提示
set noerrorbells           " 有错误信息时不响铃
set ffs=unix,dos,mac       " 文件换行符，默认使用 unix 换行符
set hidden                 " 终端隐藏后不结束
set history=50             " 历史记录条数
"  set lazyredraw             " 延迟绘制，提升性能
set mouse=n                " 允许使用鼠标, normal 生效，a 则是全模式生效
set pumheight=10           " 补全最多显示 10 行
set shortmess+=c           " Don't pass messages to |ins-completion-menu|

"" 窗口
set splitbelow             " 强制所有的横向拆分到当前窗口以下
set splitright             " 强制所有的垂直分割到当前窗口的右边

"" 时间延迟
set timeoutlen=200         " 等待键盘快捷键连击时间 (ms)
set updatetime=500         " 更快的写入 (默认为 4000ms)

"" 文件备份
set nobackup               " 不创建备份文件
set noswapfile             " 不创建临时交换文件
set nowritebackup          " 编辑时不创建备份文件
