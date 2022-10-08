-- https://github.com/jose-elias-alvarez/null-ls.nvim
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    vim.notify("Can not find 'null-ls'!")
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local options = {
    debug = false,
    sources = {
        formatting.clang_format, -- cpp
        formatting.cmake_format, -- cmake
        formatting.gofmt, -- go
        formatting.goimports, -- go import modules
        formatting.markdownlint, -- markdown
        formatting.nginx_beautifier, -- nginx
        formatting.prettier.with {
            filetypes = {
                "javascript", "javascriptreact",
                "typescript", "typescriptreact",
                "vue", "css", "scss", "less", "html",
                "json", "jsonc", "yaml",
            }
        },
        -- formatting.rustfmt, -- rust
        formatting.stylua, -- lua
        formatting.shfmt, -- bash
        formatting.yapf, -- python
        diagnostics.flake8,
    },
}

null_ls.setup(options)
