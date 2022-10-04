-- 插件配置

-- 自动安装 [packer.nvim](https://github.com/wbthomason/packer.nvim)
-- ~/.local/share/nvim/site/pack/packer/
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

-- Install your plugins here
packer.startup({
    function(use)
        -- packer.nvim 可以升级自己
        use("wbthomason/packer.nvim")
        use("kyazdani42/nvim-web-devicons")
        use("nvim-lua/plenary.nvim")

        --------------------- plugins -------------------
        -- nvim-tree
        use({
            "kyazdani42/nvim-tree.lua",
            requires = { "kyazdani42/nvim-web-devicons" },
        })
        -- bufferline
        use({
            'akinsho/bufferline.nvim',
            tag = "v2.*",
            requires = { 'kyazdani42/nvim-web-devicons' },
        })
        -- lualine
        use({
            "nvim-lualine/lualine.nvim",
            requires = { "kyazdani42/nvim-web-devicons" },
        })
        use("arkav/lualine-lsp-progress")
        -- telescope
        use({
            "nvim-telescope/telescope.nvim",
            tag = "0.1.0",
            requires = { "nvim-lua/plenary.nvim" },
        })

        --------------------- themes --------------------
        use("navarasu/onedark.nvim")


        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require("packer").sync()
        end
    end,

    config = {
        -- 自定义源
        git = {
            default_url_format = "https://github.com/%s",
            -- default_url_format = "https://hub.fastgit.xyz/%s",
        },
        display = {
            -- compact = false, -- If true, fold updates results by default
            -- 使用浮动窗口显示
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
            -- show_all_info = true, -- Should packer show all update details automatically?
            autoremove = true, -- Remove disabled or unused plugins without prompting the user
        },
    },
})
