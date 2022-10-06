-- https://github.com/williamboman/nvim-lsp-installer
-- https://github.com/neovim/nvim-lspconfig

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    vim.notify("Can not find 'nvim-lsp-installer'!")
    return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    vim.notify("Can not find 'lspconfig'!")
    return
end

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
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

local options = {
    ensure_installed = servers,
    automatic_installation = true,
}

lsp_installer.setup(options)

-- 'lsp/settings/' 中的文件名必须与服务器名一致
for _, server in pairs(servers) do
    local opts = {
        on_attach = require("lsp.handlers").on_attach,
        capabilities = require("lsp.handlers").capabilities,
    }

    local has_custom_opts, server_custom_opts = pcall(require, "lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end

    lspconfig[server].setup(opts)
end
