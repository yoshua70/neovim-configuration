local treesitter_configs = require("nvim-treesitter.configs")

treesitter_configs.setup({
    ensure_installed = {
        "c", "cpp", "c_sharp",
        "lua",
        "python",
        "vim", "vimdoc",
        "markdown", "markdown_inline",
        "go",
        "java",
    },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
    },
})
