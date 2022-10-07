-- https://github.com/windwp/nvim-autopairs

local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
    vim.notify("Can not find 'autopairs'!")
    return
end

local options = {
    check_ts = true,
    ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        -- java = false, -- don't check treesitter on java
    },
    disable_filetype = { "TelescopePrompt" },
}

autopairs.setup(options)

-- If you want insert `(` after select function or method item
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    vim.notify("Can not find 'cmp'!")
    return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
