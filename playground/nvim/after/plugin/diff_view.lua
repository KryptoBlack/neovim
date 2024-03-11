local diffview = require('diffview')

local function setup_diffview()
    diffview.setup {
        enhanced_diff_hl = true,
        signs = {
            fold_closed = "",
            fold_open = "",
        },
        key_bindings = {
            view = {
                ["q"] = ':DiffviewClose<CR>',
            },
            file_panel = {
                ["q"] = ':DiffviewClose<CR>',
            },
        },
    }
end

setup_diffview()

-- Key mapping to open the diff view
vim.api.nvim_set_keymap('n', '<Leader>d', ':DiffviewOpen<CR>', { noremap = true, silent = true })
