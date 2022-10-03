-- https://github.com/akinsho/bufferline.nvim

local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    vim.notify("Can not find 'bufferline'!")
    return
end

local options = {
    options = {
        numbers = "ordinal",
        -- 关闭 Tab 的命令
        close_command = "bdelete! %d",
        right_mouse_command = "buffer %d", -- override to behavior like 'left_mouse_command'
        -- 侧边栏配置，左侧让出 nvim-tree 的位置，显示文字 File Explorer
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                separator = true,
            },
        },
        -- LSP 指示
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " " or (e == "warning" and " " or "")
                s = s .. n .. sym
            end
            return s
        end,
    },
}

bufferline.setup(options)
