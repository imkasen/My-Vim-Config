local M = {}

-- make sure to maintain the structure of `core/default_config.lua` here

M.options = {
    user = function ()
        require "custom.options"
    end
}

M.mappings = require "custom.mappings"

return M
