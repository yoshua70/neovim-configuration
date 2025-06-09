return {
    { "echasnovski/mini.nvim", version = "*" },
    { "nvim-tree/nvim-web-devicons", opts = {} },
    -- Colorscheme
    {
        "craftzdog/solarized-osaka.nvim",
        -- lazy = false,
        -- priority = 1000,
        opts = function()
            return {
                transparent = true,
            }
        end,
        config = function()
            -- vim.cmd([[colorscheme solarized-osaka]])
        end,
    },
    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        -- lazy = false,
        -- priority = 1000,
        config = function()
            -- require("github-theme").setup({})
            -- vim.cmd([[colorscheme github_dark_high_contrast]])
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme kanagawa-dragon]])
        end,
    },
    -- Keybindings hints
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc =  "Buffer Local Keymaps (which-key)",
            },
        }
    },
    -- File explorer
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        ---@module "neo-tree
        ---@type neotree.Config?
        keys = {
            { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Neotree: toggle" },
        },
        opts = {
            window = {
                position =  "right",
            },
        },
    },
    -- Telescope - file finder
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { 
                "<leader>ff",
                "<cmd>Telescope find_files<CR>",
                "n",
                desc = "Telescope: find file"
            },
            { 
                "<leader>fg",
                "<cmd>Telescope live_grep<CR>",
                "n",
                desc = "Telescope: live grep"
            },
            { 
                "<leader>fb",
                "<cmd>Telescope buffers<CR>",
                "n",
                desc = "Telescope: buffers"
            },
        },
    },
    -- Language integration
    { "neovim/nvim-lspconfig" },
    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
            -- If using vsnip :
            -- "hrsh7th/cmp-vsnip",
            -- "hrsh7th/vim-vsnip",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
    },
}
