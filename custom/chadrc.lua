-- make sure to maintain the structure of `core/default_config.lua` here

local M = {}

local userPlugins = require "custom.plugins"

M.options = {
    -- change default options
    user = function ()
        require "custom.options"
    end
}

M.plugins = {

    options = {
        -- lsp
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig",
        },

        statusline = {
            separator_style = "arrow",
        },
    },

    -- override default config of a plugin
    override = {
        ["nvim-treesitter/nvim-treesitter"] = "custom.override.treesitter",
    },

    -- add plugins
    user = userPlugins
}

-- customize mappings
M.mappings = require "custom.mappings"

return M
