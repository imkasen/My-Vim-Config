-- https://github.com/nvim-treesitter/nvim-treesitter

local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    vim.notify("Can not find 'nvim-treesitter'!")
    return
end

local options = {
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "css",
        "dockerfile",
        -- "dot",
        -- "gitignore",
        "go",
        "gomod",
        "html",
        "javascript",
        "json",
        -- "llvm",
        "lua",
        "make",
        "markdown",
        "python",
        "regex",
        -- "rust",
        -- "scss",
        -- "sql",
        "toml",
        "typescript",
        "vim",
        -- "vue",
        "yaml",
    },
    -- 启用代码高亮模块
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    -- 启用代码缩进模块 (=)
    indent = {
        enable = true,
    },
    -- https://github.com/p00f/nvim-ts-rainbow
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = 10000, -- Do not enable for files with more than n lines, int
    },
    -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
    -- context_commentstring = {
    --     enable = true,
    --     enable_autocmd = false,
    -- },
}

treesitter.setup(options)
