local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- dir-tree
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    -- colorscheme
    'EdenEast/nightfox.nvim',
    -- commenter
    'preservim/nerdcommenter',
    -- statusbar
    'nvim-lualine/lualine.nvim',
    -- undotree
    'mbbill/undotree',
    -- nvim-treesetter
    'nvim-treesitter/nvim-treesitter',
    -- markdown viewer
    {"ellisonleao/glow.nvim", config = true, cmd = "Glow"},
    -- terminal in neovim
    'voldikss/vim-floaterm',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        branch = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- lsp-zero
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

})
