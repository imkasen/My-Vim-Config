-- https://github.com/hrsh7th/nvim-cmp
-- https://github.com/L3MON4D3/LuaSnip

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    vim.notify("Can not find 'cmp'!")
    return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
    vim.notify("Can not find 'luasnip'!")
    return
end

-- use existing vs-code style snippets
require("luasnip.loaders.from_vscode").lazy_load()

-- local check_backspace = function()
--     local col = vim.fn.col "." - 1
--     return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
-- end

--   פּ ﯟ   some other good icons
local kind_icons = {
    Text = "",
    Method = "m",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

local options = {
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    -- 快捷键
    mapping = require("keymaps").cmp(cmp),
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            -- Kind icons
            -- vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            vim_item.kind = kind_icons[vim_item.kind]
            vim_item.menu = ({
                luasnip = "[Snippet]",
                buffer = "[Buffer]",
                path = "[Path]",
            })[entry.source.name]
            return vim_item
        end,
    },
    -- 来源
    sources = {
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    },
    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    experimental = {
        ghost_text = true,
        native_menu = false,
    },
}

cmp.setup(options)
