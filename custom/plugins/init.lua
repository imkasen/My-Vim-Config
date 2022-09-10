local overrides = require "custom.plugins.override"

return {

    ------------------ default plugins ------------------

    ["NvChad/ui"] = {
        override_options = overrides.ui
    },

    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = overrides.treesitter
    },

    ["kyazdani42/nvim-tree.lua"] = {
        override_options = overrides.nvimtree
    },

    ["williamboman/mason.nvim"] = {
        override_options = overrides.mason
    },

    -- lsp
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    ------------------ custom plugins ------------------

    ["wakatime/vim-wakatime"] = {},

    ["folke/which-key.nvim"] = {
        disable = false,
    },

    ["max397574/better-escape.nvim"] = {
        event = "InsertEnter",
        config = function()
            require "custom.plugins.better-escape"
        end,
    },

    ["Pocco81/auto-save.nvim"] = {
        config = function()
            require("auto-save").setup()
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
