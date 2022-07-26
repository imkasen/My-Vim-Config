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

-- https://github.com/williamboman/mason.nvim
M.mason = {
    ensure_installed = {
        -- "asm-lsp",
        "bash-language-server",
        "clangd",
        "cmake-language-server",
        "css-lsp",
        "dockerfile-language-server",
        -- "dot-language-server",
        "eslint-lsp",
        "gopls",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "pyright",
        -- "rust-analyzer",
        -- "sqlls",
        -- "tailwindcss-language-server",
        -- "typescript-language-server",
        "vim-language-server",
        -- "vue-language-server",
        "yaml-language-server",
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
