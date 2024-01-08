local path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if not vim.loop.fs_stat(path) then
    local out = vim.fn.system({
        "git",
        "clone",
        "--depth=1",
        "https://github.com/wbthomason/packer.nvim.git",
        path,
    })
    print(out)
else
    print("Packer already installed")
end

vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && yarn install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })
    -- dir-tree
    use 'nvim-tree/nvim-tree.lua'
    -- web-devicons
    use 'nvim-tree/nvim-web-devicons'
    -- colorscheme
    -- use 'EdenEast/nightfox.nvim'
    use 'folke/tokyonight.nvim'
    -- commenter
    use 'preservim/nerdcommenter'
    -- statusbar
    use 'nvim-lualine/lualine.nvim'
    -- undotree
    use 'mbbill/undotree'
    -- nvim-treesetter
    use 'nvim-treesitter/nvim-treesitter'
    -- terminal in neovim
    -- use 'voldikss/vim-floaterm'
    -- copilot
    use 'github/copilot.vim'
    -- null-ls
    use 'jose-elias-alvarez/null-ls.nvim'
    -- trouble (diagnostics)
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }
    -- indent-blankline
    use 'lukas-reineke/indent-blankline.nvim'
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- deadcolumn
    --use 'Bekaboo/deadcolumn.nvim'
    -- folding
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
    -- lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
    -- git diff
    use "sindrets/diffview.nvim"
    -- tabbed view
    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    -- use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'
end)
