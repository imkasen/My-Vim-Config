-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

    -- lspservers with default config
    local servers = {
        "bashls",
        "clangd",
        "cmake",
        "cssls",
        "dockerls",
        "gopls",
        "html",
        "pyright",
        "tsserver",
        "vimls",
     }

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
        }
    end
end

return M
