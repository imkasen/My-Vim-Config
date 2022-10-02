-- 主题配置

-- https://github.com/navarasu/onedark.nvim
local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
else
    local _, theme = pcall(require, colorscheme)
    theme.setup({
        style = "darker"
    })
    theme.load()
end
