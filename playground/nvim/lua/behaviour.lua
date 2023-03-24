--startup
local function startup()
    -- open the tree
    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = startup })

--on save
local function onsave()
    --formatting
    vim.lsp.buf.format()
end
vim.api.nvim_create_autocmd({ "BufWritePre" }, { callback = onsave })
