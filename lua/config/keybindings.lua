local map = vim.keymap.set

-- Window navigation inside of Neovim
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window bottom" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window top" })
