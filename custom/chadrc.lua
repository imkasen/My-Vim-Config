-- make sure to maintain the structure of `core/default_config.lua` here

local M = {}

local override = require "custom.override"
local userPlugins = require "custom.plugins"

M.options = {
    user = function ()
        require "custom.options"
    end
}

M.plugins = {

    override = {
        ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    },

    user = userPlugins
}

M.mappings = require "custom.mappings"

return M
