-- fat cursor
vim.opt.guicursor = "i:block"

-- line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab spacing
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- disable swapfile and backup
-- rely on undotree to store everylast change
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/vim/undodir"
vim.opt.undofile = true

-- string search in a file
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- disable default showmode as lualine will handle it
vim.opt.showmode = false

-- disable netrw in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

vim.opt.wrap = false

-- floatterm
vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9

-- disable mouse
vim.opt.mouse = ""

-- remove ~ at end of buffer
vim.opt.fillchars = { eob = " " }

-- search case
vim.opt.smartcase = true
vim.opt.ignorecase = true
