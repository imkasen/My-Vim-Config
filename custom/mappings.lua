local M = {}

M.disabled = {
    n = {
        -- line numbers
        ["<leader>n"] = "",
        ["<leader>rn"] = "",
    },
}

M.general = {
    n = {
        ["<S-h>"] = { "^", "論 beginning of line" },
        ["<S-l>"] = { "$", "壟 end of line" },
    },
}

M.nvimtree = {
    n = {
        -- toggle
        ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    },
}

return M
