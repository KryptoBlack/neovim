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

--set filetype of .tfvars files to terraform
vim.api.nvim_exec([[
    augroup terraform
        autocmd!
        autocmd BufNewFile,BufRead *.tfvars set filetype=hcl
    augroup END
]], false)
