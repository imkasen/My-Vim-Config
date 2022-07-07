-- https://github.com/Pocco81/AutoSave.nvim
local present, autosave = pcall(require, "autosave")

if not present then
    return
end

autosave.setup()
