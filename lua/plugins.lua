-- 插件配置

-- 自动安装 [packer.nvim](https://github.com/wbthomason/packer.nvim)
-- ~/.local/share/nvim/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("Installing packer.nvim, please wait...")
    packer_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    vim.notify("Installation is complete, please close and reopen NeoVim.")
    vim.cmd [[packadd packer.nvim]] -- Only required if you have packer configured as `opt`
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer.nvim is not detected!")
    return
end

local configs = {
    -- 自定义源
    git = {
        default_url_format = "https://github.com/%s",
        -- default_url_format = "https://hub.fastgit.xyz/%s",
    },
    display = {
        -- 使用浮动窗口显示
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
        autoremove = true, -- Remove disabled or unused plugins without prompting the user
    },
}

-- Install your plugins here
local options = {
    function(use)
        -- Have packer manage itself
        use("wbthomason/packer.nvim")
        -- icons
        use("kyazdani42/nvim-web-devicons")
        -- An implementation of the Popup API from vim in Neovim
        use("nvim-lua/popup.nvim")
        -- Useful lua functions used ny lots of plugins
        use("nvim-lua/plenary.nvim")

        --------------------- plugins -------------------
        -- nvim-tree.lua
        use({
            "kyazdani42/nvim-tree.lua",
            requires = { "kyazdani42/nvim-web-devicons" },
        })
        -- bufferline.nvim
        use({
            'akinsho/bufferline.nvim',
            tag = "v2.*",
            requires = { 'kyazdani42/nvim-web-devicons' },
        })
        -- lualine.nvim
        use({
            "nvim-lualine/lualine.nvim",
            requires = { "kyazdani42/nvim-web-devicons" },
        })
        use("arkav/lualine-lsp-progress")
        -- telescope.nvim
        use({
            "nvim-telescope/telescope.nvim",
            tag = "0.1.0",
            requires = { "nvim-lua/plenary.nvim" },
        })
        -- dashboard-nvim
        use("glepnir/dashboard-nvim")
        -- project.nvim
        use("ahmedkhalf/project.nvim")
        -- nvim-treesitter
        use({
            "nvim-treesitter/nvim-treesitter",
            run = function()
                require('nvim-treesitter.install').update({
                    with_sync = true,
                })
            end,
        })

        --------------------- LSP --------------------
        -- enable LSP
        use("neovim/nvim-lspconfig")
        -- simple to use language server installer
        use("williamboman/nvim-lsp-installer")

        --------------------- completions --------------------
        -- The completion plugin
        use("hrsh7th/nvim-cmp")
        -- buffer completions
        use("hrsh7th/cmp-buffer")
        -- path completions
        use("hrsh7th/cmp-path")
        -- cmdline completions
        use("hrsh7th/cmp-cmdline")
        -- snippet completions
        use("saadparwaiz1/cmp_luasnip")
        use("hrsh7th/cmp-nvim-lsp")
        use("hrsh7th/cmp-nvim-lua")

        --------------------- snippets --------------------
        -- snippet engine
        use("L3MON4D3/LuaSnip")
        -- a bunch of snippets to use
        use("rafamadriz/friendly-snippets")

        --------------------- themes --------------------
        use("navarasu/onedark.nvim")


        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require("packer").sync()
        end
    end,
}

packer.init(configs)
packer.startup(options)
