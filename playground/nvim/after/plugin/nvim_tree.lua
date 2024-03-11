local function on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
    vim.keymap.set('n', '<C-s>', api.node.open.horizontal, opts('Open: Vertical Split'))
    vim.keymap.set("n", "<C-e>", function()
        vim.cmd("NvimTreeFocus")
    end)
end

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    hijack_cursor = true,
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        -- dotfiles = false,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    on_attach = on_attach
})
