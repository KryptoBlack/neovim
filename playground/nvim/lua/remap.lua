vim.g.mapleader = " "

-- explore
vim.keymap.set("n", "-", vim.cmd.Ex)

-- move the selection up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- half page jumps up and down
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "<C-j>", "<C-d>zz")

-- move the cursor down and up in search mode
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete selction and paste while preseving the copied text
-- the deleted text would be sent to a void register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank (copy) into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete into void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- due to different behaviours of Ctrl+c and Esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- format code
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- substitute
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- add execute permission to file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- add new line without changing to insert mode
vim.keymap.set("n", "<leader>o", "o<Esc>0\"_D")
vim.keymap.set("n", "<leader>O", "O<Esc>0\"_D")

-- window movement
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-v>", "<C-w>v")
vim.keymap.set("n", "<A-s>", "<C-w>s")

-- undotree
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)

-- floatterm
vim.keymap.set('n', '<A-n>', '<C-\\><C-n>:FloatermToggle<CR>')
vim.keymap.set('t', '<A-n>', '<C-\\><C-n>:FloatermToggle<CR>')
vim.keymap.set('n', '<A-t>', '<C-\\><C-n>:FloatermNew<CR>')
vim.keymap.set('t', '<A-t>', '<C-\\><C-n>:FloatermNew<CR>')
vim.keymap.set('t', '<A-.>', '<C-\\><C-n>:FloatermNext<CR>')
vim.keymap.set('t', '<A-,>', '<C-\\><C-n>:FloatermPrev<CR>')

-- lazy-git
vim.keymap.set('n', '<leader>gs', function()
    vim.cmd('FloatermNew lazygit')
end)

-- disable mouse
-- scroll is read as arrow keys
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')
vim.keymap.set('v', '<up>', '<nop>')
vim.keymap.set('v', '<down>', '<nop>')
vim.keymap.set('v', '<left>', '<nop>')
vim.keymap.set('v', '<right>', '<nop>')
