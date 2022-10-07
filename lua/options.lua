-- 基础配置

--[[
vim.g.{name}: 全局变量
vim.b.{name}: 缓冲区变量
vim.w.{name}: 窗口变量
vim.bo.{option}: buffer-local 选项
vim.wo.{option}: window-local 选项
--]]

local opt = vim.opt
local g = vim.g

local options = {
    title = true,
    -- 在处理未保存或只读文件时，是否需要确认
    confirm = true,
    -- 有错误信息时不响铃
    errorbells = false,
    visualbell = true,
    -- 文件换行符，默认使用 unix 换行符
    fileformats = "unix,dos,mac",
    -- 延迟绘制，提升性能
    -- lazyredraw = true,
    -- 显示光标的位置
    ruler = false,
    -- 高亮所在行
    cursorline = true,
    -- 显示左侧图标指示列
    signcolumn = "yes",
    -- 右侧参考线
    colorcolumn = "120",
    -- 命令行高为 2，提供足够的显示空间
    cmdheight = 2,
    -- 折行
    wrap = true,
    -- 在合适的地方折行
    linebreak = true,
    -- 允许隐藏被修改过的 buffer
    hidden = true,
    -- 鼠标支持
    mouse = "n",
    -- 补全增强
    wildmenu = true,
    -- 补全最多显示 10 行
    pumheight = 10,
    -- TUI 开启真彩色
    termguicolors = true,
    textwidth = 120,
    history = 50,

    -- -- utf8
    encoding = "UTF-8",
    fileencoding = "utf-8",
    fileencodings = "ucs-bom,utf-8,gb18030,cp936,latin1",
    termencoding = "utf-8",

    -- 自定切换当前目录为当前文件所在的目录
    autochdir = true,
    -- 当文件被外部程序修改时，自动加载
    autoread = true,
    -- 自动写回
    autowrite = true,

    -- jkhl 移动时光标周围保留 8 行
    scrolloff = 8,
    sidescrolloff = 8,

    -- 使用相对行号
    number = true,
    relativenumber = true,
    numberwidth = 2,

    -- 缩进 4 个空格等于一个Tab
    tabstop = 4,
    softtabstop = 4,
    shiftround = true,
    -- >> << 时移动长度
    shiftwidth = 4,
    -- 空格替代 tab
    expandtab = true,

    -- 新行对齐当前行
    autoindent = true,
    smartindent = true,

    -- 搜索大小写不敏感，除非包含大写
    ignorecase = true,
    smartcase = true,

    -- 搜索不要高亮
    hlsearch = true,
    -- 边输入边搜索
    incsearch = true,

    -- 禁止创建备份文件
    backup = false,
    writebackup = false,
    swapfile = false,

    -- faster completion (4000ms default)
    updatetime = 300,
    -- time to wait for a mapped sequence to complete (in milliseconds)
    timeoutlen = 500,

    -- split window 从下边和右边出现
    splitbelow = true,
    splitright = true,

    -- 不可见字符的显示，这里只把空格显示为一个点
    list = true,
    listchars = "space:·,tab:-->",

    -- 永远显示 tabline
    showtabline = 2,
    -- 使用增强状态栏插件后不再需要 vim 的模式提示
    showmode = false,
    laststatus = 3,

    -- 启动 Vim 时关闭折叠代码
    foldenable = false,
    -- 基于语法进行代码折叠
    foldmethod = "syntax",
}

for k, v in pairs(options) do
    opt[k] = v
end

-- 自动补全不自动选中
g.complete = "menu,menuone,noselect,noinsert"

-- 与系统共用剪切板
opt.clipboard:append "unnamedplus"

-- Dont' pass messages to |ins-completin menu|
opt.shortmess:append 'c'

-- go to previous/next line with hlleft arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<,>,[,],h,l"

-- recognize 'xx-xx' as a whole word when using 'dw/cw..' cmd
-- opt.iskeyword:append "-"
