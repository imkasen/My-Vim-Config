return {
    -- enable dashboard
    -- ["goolord/alpha-nvim"] = {
    --     disable = false,
    -- },

    ["wakatime/vim-wakatime"] = {},

    ["max397574/better-escape.nvim"] = {
        event = "InsertCharPre",
        config = function()
            -- require("plugins.configs.others").better_escape()
            require "custom.plugins.better-escape"
        end,
    },
}