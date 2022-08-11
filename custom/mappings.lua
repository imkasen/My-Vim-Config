local M = {}

M.disabled = {
    i = {
        -- go to  beginning and end
        ["<C-b>"] = "",
        ["<C-e>"] = "",
    },

    n = {
        -- line numbers
        ["<leader>n"] = "",
        ["<leader>rn"] = "",
    },
}

M.general = {
    n = {
        ["<S-h>"] = { "^", "beginning of line" },
        ["<S-l>"] = { "$", "end of line" },
    },
}

M.nvimtree = {
    n = {
        -- toggle
        ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
    },
}

return M
