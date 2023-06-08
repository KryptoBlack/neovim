-- https://github.com/EdenEast/nightfox.nvim
--local nightfox = require("nightfox")

-- Create a list
local scheme = { "nightfox", "nordfox", "duskfox" }

-- Randomly select a color scheme from the list
local index = math.random(1, #scheme)

print('Your colorscheme for this session is ' .. scheme[index])

-- Load the colorscheme
vim.cmd("colorscheme " .. scheme[index])
