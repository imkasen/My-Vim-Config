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
        -- "dot",
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
        "scss",
        "toml",
        "typescript",
        "vim",
        -- "vue",
        "yaml",
    },
}

M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

M.ui = {
    statusline = {
        separator_style = "arrow", -- default/round/block/arrow
    },
}

return M
