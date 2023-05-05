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

    -- dir-tree
    use 'nvim-tree/nvim-tree.lua'
    -- web-devicons
    use 'nvim-tree/nvim-web-devicons'
    -- colorscheme
    use 'EdenEast/nightfox.nvim'
    -- commenter
    use 'preservim/nerdcommenter'
    -- statusbar
    use 'nvim-lualine/lualine.nvim'
    -- undotree
    use 'mbbill/undotree'
    -- nvim-treesetter
    use 'nvim-treesitter/nvim-treesitter'
    -- markdown viewer
    use {
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    }
    -- terminal in neovim
    use 'voldikss/vim-floaterm'
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
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- deadcolumn
    use 'Bekaboo/deadcolumn.nvim'
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
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required
        }
    }
end)
end)
end)
