-- Language servers
vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("pylsp")

-- Lsp keymaps
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(event)
        -- Helper function to set keybindings
        local map = function(keys, func, desc)
            vim.keymap.set(
                "n",
                keys,
                func,
                {
                    buffer = event.buf,
                    desc = "Lsp: " .. desc,
                }
            )
        end

        local tele = require("telescope.builtin")

        map("gd", tele.lsp_definitions, "Goto Definition")
        map("<leader>fs", tele.lsp_document_symbols, "Doc Symbols")
        map("<leader>fS", tele.lsp_dynamic_workspace_symbols, "Dynamic Symbols")
        map("<leader>ft", tele.lsp_type_definitions, "Goto Type")
        map("<leader>fr", tele.lsp_references, "Goto References")
        map("<leader>fr", tele.lsp_implementations, "Goto Impl")

        map("K", vim.lsp.buf.hover, "hover")
        map("<leader>E", vim.diagnostic.open_float, "diagnostic")
        map("<leader>k", vim.lsp.buf.signature_help, "signature help")
        map("<leader>rn", vim.lsp.buf.rename, "rename")
        map("<leader>ca", vim.lsp.buf.code_action, "code action")
        map("<leader>wf", vim.lsp.buf.format, "format")

        vim.keymap.set(
            "v",
            "<leader>ca",
            vim.lsp.buf.code_action,
            {
                buffer = event.buf,
                desc = "Lsp: code_action"
            }
        )
    end,
})

