-- https://github.com/nvim-lualine/lualine.nvim

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    vim.notify("Can not find 'lualine'!")
    return
end

local options = {
    options = {
        -- 指定皮肤
        theme = "onedark",
        globalstatus = true,
    },
    extensions = {
        "nvim-tree",
    },
    sections = {
        lualine_c = {
            "filename",
            {
                "lsp_progress",
                spinner_symbols = { " ", " ", " ", " ", " ", " " },
            },
        },
    },
}

lualine.setup(options)
