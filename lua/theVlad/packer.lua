-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use("nvim-tree/nvim-web-devicons")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })
    -- colorscheme & theme
    use("folke/tokyonight.nvim")
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use("p00f/nvim-ts-rainbow")
    use("theprimeagen/harpoon")
    use({ "windwp/nvim-autopairs", "windwp/nvim-ts-autotag" })
    use("mbbill/undotree")

    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("deoplete-plugins/deoplete-clang")

    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("toggleterm").setup()
        end,
    })

    use("nvim-lua/plenary.nvim")
    use("kawre/neotab.nvim")
    use({
        "jose-elias-alvarez/null-ls.nvim",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })
    --use ("nvim-tree/nvim-tree.lua")
    use({
        "aserowy/tmux.nvim",
        config = function() return require("tmux").setup() end
    })

    use("mfussenegger/nvim-dap")
    use('rcarriga/nvim-dap-ui')
    use('theHamsta/nvim-dap-virtual-text')
    use('nvim-telescope/telescope-dap.nvim')
    use({
        'jay-babu/mason-nvim-dap.nvim',
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap"
        },
        opts = {
            handlers = {},
        }
    })

    -- god pope
    use({ "tpope/vim-fugitive",
        "tpope/vim-commentary" })

    -- Database
    use({
        "tpope/vim-dadbod",
        opt = true,
        module = { "dadbod" },
        requires = {
            "kristijanhusak/vim-dadbod-ui",
            "kristijanhusak/vim-dadbod-completion",
        },
        cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
    })

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/vim-vsnip" },
            { "hrsh7th/vim-vsnip-integ" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-vsnip" },
            { "L3MON4D3/LuaSnip" },
        },
    })
end)
