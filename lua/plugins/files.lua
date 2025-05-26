return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({})
        end,
        keys = {
            { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Nvim Tree" },
        },
    },
}
