-- https://github.com/lukas-reineke/indent-blankline.nvim

local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
    vim.notify("Can not find 'indent_blankline'!")
    return
end

local options = {
    -- 空行占位
    space_char_blankline = " ",
    -- 用 treesitter 判断上下文
    show_current_context = true,
    show_current_context_start = true,
    -- echo &filetype
    filetype_exclude = {
        "null-ls-info",
        "dashboard",
        "startify",
        "packer",
        "terminal",
        "help",
        "log",
        "markdown",
        "TelescopePrompt",
        "lsp-installer",
        "lspinfo",
        "toggleterm",
        "NvimTree",
    },
}

indent_blankline.setup(options)
