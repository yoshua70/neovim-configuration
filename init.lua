require("lazy.lazy")

vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- require("config.misc")

require("config.keybindings")
require("config.lsp_settings")
require("config.cmp_settings")
