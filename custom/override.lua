-- overriding default plugin configs

local M = {}

-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
M.treesitter = {
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        -- "comment",
        "cpp",
        "css",
        -- "dockerfile",
        -- "dot",
        "go",
        -- "gomod",
        -- "help",
        "html",
        -- "http",
        -- "java",
        "javascript",
        "json",
        -- "llvm",
        "lua",
        "make",
        "markdown",
        -- "perl",
        -- "php",
        "python",
        "regex",
        -- "rust",
        "scss",
        "toml",
        "typescript",
        "vim",
        -- "vue",
        "yaml",
    },
}

return M
