require("nvim-tree").setup({
    sort_by = "case_sensitive",
    hijack_cursor = true,
    view = {
        width = 30,
        mappings = {
            list = {
                -- { key = "<leader>o", action = "collapse" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
})

-- nvim-tree
vim.keymap.set("n", "<C-e>", function()
    vim.cmd("NvimTreeFocus")
end)
