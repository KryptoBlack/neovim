require("nvim-tree").setup({
    sort_by = "case_sensitive",
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
        dotfiles = true,
    },
})

-- nvim-tree
vim.keymap.set("n", "<C-e>", function()
    vim.cmd("NvimTreeFocus")
end)
