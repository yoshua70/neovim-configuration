return {
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
}
