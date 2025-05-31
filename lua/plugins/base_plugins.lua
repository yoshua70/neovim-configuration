return {
    { "echasnovski/mini.nvim", version = "*" },
    { "nvim-tree/nvim-web-devicons", opts = {} },
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = function()
            return {
                transparent = true,
            }
        end,
        config = function()
            vim.cmd([[colorscheme solarized-osaka]])
        end,
    },
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
            { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Neotree toggle" },
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
                desc = "Telescope find file"
            },
            { 
                "<leader>fg",
                "<cmd>Telescope live_grep<CR>",
                "n",
                desc = "Telescope live grep"
            },
            { 
                "<leader>fb",
                "<cmd>Telescope buffers<CR>",
                "n",
                desc = "Telescope buffers"
            },
        },
    },
}
