-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		lua = { require("formatter.filetypes.lua").luaformat, },

		python = { require("formatter.filetypes.python").ruff, },

        html = { require("formatter.filetypes.html").prettierd, },

		nix = { require("formatter.filetypes.nix").alejandra, },

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
