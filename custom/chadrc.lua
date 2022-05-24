-- make sure to maintain the structure of `core/default_config.lua` here

local M = {}

local override = require "custom.override"
local userPlugins = require "custom.plugins"

M.options = {
    -- change default options
    user = function ()
        require "custom.options"
    end
}

M.plugins = {

    -- lsp
    options = {
        setup_lspconf = "custom.plugins.lspconfig",
    },

    -- override default config of a plugin
    override = {
        ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    },

    -- add plugins
    user = userPlugins
}

-- customize mappings
M.mappings = require "custom.mappings"

return M
