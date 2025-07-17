return {
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
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
        "nvim-lua/plenary.nvim", lazy = true
    },
    {
        "nvim-tree/nvim-web-devicons", opts = {}
    },
    {
        "echasnovski/mini.icons", version = "*"
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        lazy = false,
        init = function()
            vim.cmd("colorscheme kanagawa")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        keys = {
            { "<leader>ft", "<CMD>Telescope find_files<CR>", desc = "Find files (telescope)" },
            { "<leader>fg", "<CMD>Telescope live_grep<CR>", desc = "Live grep (telescope)" },
            { "<leader>fb", "<CMD>Telescope buffers<CR>", desc = "Buffers (telescope)" },
            { "<leader>fh", "<CMD>Telescope help_tags<CR>", desc = "Help tags (telescope)" },
        },
    },
    {
        "stevearc/oil.nvim",
        --@module "oil"
        --@type oil.SetupOpts
        opts = {
            view_options = {
                show_hidden = true,
            },
        },
        dependencies = {
            { "echasnovski/mini.icons", opts = {} },
        },
        lazy = false,
        keys = {
            { 
                "<leader>oo",
                function()
                    -- "<CMD>Oil --float =expand('%:p:h')<CR>"
                    vim.api.nvim_command("Oil --float " .. vim.fn.expand('%:p:h'))
                end,
                desc = "Open oil in a floating window (oil.nvim)"
            },
        },
    },
}
