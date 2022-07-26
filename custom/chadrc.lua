-- make sure to maintain the structure of `core/default_config.lua` here
local M = {}

local override = require "custom.plugins.override"

M.plugins = {

    -- override default config of a plugin
    override = {
        ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
        ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
        ["NvChad/ui"] = override.ui,
        ["williamboman/mason"] = override.mason,
    },

    -- add plugins
    user = require "custom.plugins"
}

-- customize mappings
M.mappings = require "custom.mappings"

return M
