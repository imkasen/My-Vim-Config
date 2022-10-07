-- 快捷键映射

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


local opts = { noremap = true, silent = true }

-- 缩短函数名
local keymap = vim.api.nvim_set_keymap

-- 把空格键作为 leader 键
keymap("", "<Space>", "<NOP>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

------------------------------------------------------------------
-- NORMAL
------------------------------------------------------------------

keymap("n", "<C-s>", ":w<CR>", opts)

-- 光标单行跳转
keymap("n", "<S-h>", "^", opts) -- 跳转到行首
keymap("n", "<S-l>", "$", opts) -- 跳转到行尾

-- 分屏
keymap("n", "<leader>v", "<C-w>v", opts) -- 垂直分割窗口到右侧
keymap("n", "<leader>s", "<C-w>s", opts) -- 横向分割窗口到下侧

-- 光标在分屏间跳转
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 分屏比例控制
keymap("n", "<C-Left>", "<C-w><", opts)
keymap("n", "<C-Right>", "<C-w>>", opts)
keymap("n", "<C-Up>", "<C-w>-", opts)
keymap("n", "<C-Down>", "<C-w>+", opts)
keymap("n", "<leader>=", "<C-w>=", opts) -- 相等比例

-- very magic 搜索
keymap("n", "/", "/\\v", { noremap = true, silent = false })

-- 上下移动选中文本
-- https://vim.fandom.com/wiki/Moving_lines_up_or_down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

------------------------------------------------------------------
-- INSERT
------------------------------------------------------------------

-- 返回 normal 模式
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- 光标跳转
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)

keymap("i", "<C-b>", "<ESC>^i", opts) -- 跳转到行首
keymap("i", "<C-e>", "<End>", opts) --   跳转到行尾

-- 上下移动选中文本
keymap("i", "<A-j>", "<Esc>:move .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<Esc>:move .-2<CR>==gi", opts)

------------------------------------------------------------------
-- VISUAL
------------------------------------------------------------------

-- 光标单行跳转
keymap("v", "<S-h>", "^", opts) -- 跳转到行首
keymap("v", "<S-l>", "$", opts) -- 跳转到行尾

-- ">" "<" 调整缩进
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- 删除
keymap("v", "<Backspace>", "x", opts)

-- 上下移动选中文本
keymap("v", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":move '<-2<CR>gv=gv", opts)

-- 只粘贴不复制
keymap("v", "p", '"_dP', opts)

------------------------------------------------------------------
-- VISUAL BLOCK
------------------------------------------------------------------

-- 光标单行跳转
keymap("x", "<S-h>", "^", opts) -- 跳转到行首
keymap("x", "<S-l>", "$", opts) -- 跳转到行尾

-- 上下移动选中文本
keymap("x", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv=gv", opts)

------------------------------------------------------------------
-- TERMINAL
------------------------------------------------------------------

-- 退出终端
keymap("t", "<C-x>", "<C-\\><C-N>", opts)
keymap("t", "<ESC>", "<C-\\><C-N>", opts)

-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)

------------------------------------------------------------------
-- 插件快捷键
------------------------------------------------------------------
local pluginKeys = {}

---- nvim-tree.nvim ----
keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts)

---- bufferline.nvim ----
-- new buffer
keymap("n", "<leader>b", ":enew<CR>", opts)
-- cycle through buffers
-- keymap("n", "<Tab>", ":bnext<CR>", opts)
-- keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
-- close buffer
keymap("n", "<leader>x", ":bdelete!<CR>", opts)

---- telescope.nvim ----
-- 查找文件
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)
-- 全局搜索
keymap("n", "<S-f>", ":Telescope live_grep<CR>", opts)
-- Telescope 插入模式快捷键
pluginKeys.telescopeList = {
    i = {
        -- 上下移动
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<Tab>"] = "move_selection_next",
        ["<S-Tab>"] = "move_selection_previous",
        -- 历史记录
        ["<Up>"] = "cycle_history_prev",
        ["<Down>"] = "cycle_history_next",
        -- 关闭窗口
        ["<C-c>"] = "close",
        ["<Esc>"] = "close",
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down",
    },
}

---- nvim-cmp ----
pluginKeys.cmp = function(cmp, luasnip, check_backspace)
    return {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        -- ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
        -- ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        -- ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ["<C-e>"] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        },
        ["<Esc>"] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        },
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = cmp.mapping.confirm { select = true },
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expandable() then
                luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif check_backspace() then
                fallback()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
    }
end

---- LSP ----
pluginKeys.mapLSP = function(mapBuf)
    mapBuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    mapBuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    mapBuf("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    mapBuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    mapBuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    mapBuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    mapBuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
    mapBuf("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    mapBuf("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    mapBuf("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    mapBuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
    mapBuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    mapBuf("n", "<leader>sl", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
    mapBuf("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    -- mapBuf("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
    -- mapBuf("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)
end

return pluginKeys
