-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://github.com/williamboman/nvim-lsp-installer

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- lspservers with default config
local servers = {
    "bashls",
    "clangd",
    "cmake",
    "cssls",
    "dockerls",
    -- "dotls",
    "eslint",
    "gopls",
    "html",
    "jsonls",
    "pyright",
    -- "rust_analyzer",
    -- "sqlls",
    "sumneko_lua",
    -- "tailwindcss",
    "tsserver",
    "vimls",
    -- "vuels",
    "yamlls",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
