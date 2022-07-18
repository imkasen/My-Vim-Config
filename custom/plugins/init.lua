return {
    -- enable dashboard
    -- ["goolord/alpha-nvim"] = {
    --     disable = false,
    -- },

    ["wakatime/vim-wakatime"] = {},

    ["max397574/better-escape.nvim"] = {
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
