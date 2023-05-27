-- https://github.com/EdenEast/nightfox.nvim

-- Create a list
local schemes = { "nightfox", "nordfox", "duskfox", "terafox", "carbonfox" }

-- Randomly select a color scheme

local index = math.random(1, #schemes)
local scheme = schemes[index]

-- Load the colorscheme
vim.cmd("colorscheme " .. scheme)

