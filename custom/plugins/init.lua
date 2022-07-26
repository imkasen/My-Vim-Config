return {

    -- lsp
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    ["wakatime/vim-wakatime"] = {},

    ["max397574/better-escape.nvim"] = {
        event = "InsertEnter",
        config = function()
            require "custom.plugins.better-escape"
        end,
    },

    ["Pocco81/AutoSave.nvim"] = {
        config = function()
            require "custom.plugins.autosave"
        end,
    },

    -- format & linting
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end,
    },
}
