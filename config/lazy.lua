-- Bootstrap lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"

-- Make a syscall using the lua library luv which wraps around the C library libuv
-- to get the status of a file, here we check if a directory 'lazy.nvim' already
-- exists; if not, we clone the lazy.nvim repository.
-- The underlyig syscall is 'stat' (short for status) which gets the status of a file 
-- (remember that on Linux, directories are files, everything is a file).
if not vim.uv.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath
	})

	-- 'vim.v' holds a list of predefined variables. Here, 'shell_error' contains the
	-- result of the last shell command. A non-zero value indicates the command
	-- had an error. A zero value indicates the command encountered no issue.
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})

		-- 'vim.fn.{func}({...})' invokes vim-function or user-function {func}
		-- with parameters {...}.
		-- 'getchar' gets a character from the user.
		vim.fn.getchar()
		os.exit(1)
	end
end

-- 'vim.opt' is a special interface to conveniently interact with list- and map-style
-- options from Lua. 'rtp' is short for 'runtimepath'.
vim.opt.rtp:prepend(lazypath)

-- 'vim.g' accesses the Vim global dictionary 'g:'.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = { 
		-- import your plugins
		{ import = "plugins" },
    },

	-- Configure other settings here.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },

	-- automatically check for plugin updates
	checker = { enabled = true },
})
