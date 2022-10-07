-- https://github.com/nvim-telescope/telescope.nvim
-- sudo apt install ripgrep
-- sudo apt install fd-find

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    vim.notify("Can not find 'telescope'!")
    return
end

local options = {
    defaults = {
        prompt_prefix = "   ",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.6,
                results_width = 0.8,
            },
            width = 0.9,
            height = 0.8,
            preview_cutoff = 120,
        },
        path_display = {
            "smart",
        },
        -- 窗口内快捷键
        mappings = require("keymaps").telescopeList,
    },
}

telescope.setup(options)
