local cmp = require("cmp")

cmp.setup({
    snippet = {
        -- Specify the snippet engine to use
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
            vim.snippet.expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        -- Set select to false to only explicitely confirm selected suggestion
        ["<C-y>"] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources(
        {
            { name = "nvim_lsp" },
            { name = "luasnip" },
        },
        {
            { name = "buffer" },
        }
    ),
})

-- Use buffer source for `/` and `?`
cmp.setup.cmdline(
    { "/", "?" },
    {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" }
        }
    }
)

-- Use cmdline & path source for `:`
cmp.setup.cmdline(
    ":",
    {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources(
            {
                { name = "path" }
            },
            {
                { name = "cmdline" }
            }
        ),
        matching = { disallow_symbol_nonprefix_matching = false }
    }
)

-- Set up lspconfig
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig")["clangd"].setup({
    capabilities = capabilities
})
