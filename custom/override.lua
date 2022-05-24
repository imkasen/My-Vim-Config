-- overriding default plugin configs

local M = {}

-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
M.treesitter = {
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "dockerfile",
        "go",
        "gomod",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "python",
        "regex",
        "toml",
        "typescript",
        "vim",
        "yaml",
    },
}

return M
