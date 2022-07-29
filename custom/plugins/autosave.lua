-- https://github.com/Pocco81/AutoSave.nvim
local present, autosave = pcall(require, "autosave")

if not present then
    return
end

local options = {
    execution_message = function()
        return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")
    end,
    -- execution_message = "Saved",
}

autosave.setup(options)
