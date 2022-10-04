-- https://github.com/ahmedkhalf/project.nvim

-- 输出保存目录
-- :lua print(require("project_nvim.utils.path").historyfile)
-- 我的文件在
--  ~/.local/share/nvim/project_nvim/project_history

local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
    vim.notify("Can not find 'project_nvim'!")
    return
end

local options = {
    patterns = {
        "README.md",
        ".git",
        "_darcs",
        ".hg",
        ".bzr",
        ".svn",
        "Makefile",
        "package.json",
    },
    silent_chdir = false,
}

project.setup(options)

local status_telescope, telescope = pcall(require, "telescope")
if not status_telescope then
    vim.notify("Can not find 'telescope'!")
    return
end

telescope.load_extension("projects")
