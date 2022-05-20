local M = {}

local function termcodes(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

M.general = {
    i = {
        ["jj"] = { "<ESC>", "   escape insert mode" },
    },

    n = {
        ["<S-h>"] = { "^", "論 beginning of line" },
        ["<S-l>"] = { "$", "壟 end of line" },
    },

    t = {
        ["jj"] = { termcodes "<C-\\><C-N>", "   escape terminal mode" },
    },
}

return M
