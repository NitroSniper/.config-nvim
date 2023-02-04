-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- different backgrounds
    use {'rose-pine/neovim', as = 'rose-pine' }

    use { 'sainnhe/everforest', as = 'everforest' }

    use { 'Everblush/nvim', as = 'everblush' }
    
    use {'AlexvZyl/nordic.nvim', as = 'nordic' }
    -- end

    use ({
        'nvim-treesitter/nvim-treesitter', 
        {run = ':TSUpdate'}
    })

    use {'ThePrimeagen/harpoon'}

    use {'mbbill/undotree'}
    
    use {'tpope/vim-fugitive'}

    -- Installing LSP Server

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }
    use {'github/copilot.vim'}

    use {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }

    use {'ThePrimeagen/vim-be-good'}
    
    use {'j-hui/fidget.nvim'}

    use {'andweeb/presence.nvim'}

    use { 'folke/twilight.nvim'}

    use { 'iamcco/markdown-preview.nvim' }

    use { 'stevearc/dressing.nvim' }

    use {
        'phaazon/mind.nvim',
        branch = 'v2.2',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use { 'rcarriga/nvim-notify' }
end)




