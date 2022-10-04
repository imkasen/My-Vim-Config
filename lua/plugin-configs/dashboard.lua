-- https://github.com/glepnir/dashboard-nvim

-- text to ascii art generator
-- https://patorjk.com/software/taag

local status_ok, db = pcall(require, "dashboard")
if not status_ok then
    vim.notify("Can not find 'dashboard'!")
    return
end

db.custom_footer = {
    "https://github.com/imkasen/nvime",
}

db.custom_center = {
    {
        icon = "  ",
        desc = "Find file                           ",
        action = "Telescope find_files",
    },
    {
        icon = "  ",
        desc = "Projects                            ",
        action = "Telescope projects",
    },
    {
        icon = "  ",
        desc = "Recently files                      ",
        action = "Telescope oldfiles",
    },
}

db.custom_header = {
    [[]],
    [[]],
    [[      /\__\         /\__\          ___        /\__\         /\  \     ]],
    [[     /::|  |       /:/  /         /\  \      /::|  |       /::\  \    ]],
    [[    /:|:|  |      /:/  /          \:\  \    /:|:|  |      /:/\:\  \   ]],
    [[   /:/|:|  |__   /:/__/  ___      /::\__\  /:/|:|__|__   /::\~\:\  \  ]],
    [[  /:/ |:| /\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\ /:/\:\ \:\__\ ]],
    [[  \/__|:|/:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  / \:\~\:\ \/__/ ]],
    [[      |:/:/  /   |:|__/:/  /  \::/__/           /:/  /   \:\ \:\__\   ]],
    [[      |::/  /     \::::/__/    \:\__\          /:/  /     \:\ \/__/   ]],
    [[      /:/  /       ~~~~         \/__/         /:/  /       \:\__\     ]],
    [[      \/__/                                   \/__/         \/__/     ]],
    [[]],
}

db.custom_header = {
    [[]],
    [[ ███╗   ██╗██╗   ██╗██╗███╗   ███╗███████╗ ]],
    [[ ████╗  ██║██║   ██║██║████╗ ████║██╔════╝ ]],
    [[ ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗   ]],
    [[ ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║██╔══╝   ]],
    [[ ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║███████╗ ]],
    [[ ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚══════╝ ]],
    [[]],
}
