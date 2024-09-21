require("plugins/lazy-pm")

require("lazy").setup({
	spec = {
		{
			"neovim/nvim-lspconfig",
			init = function()
				require("../configs/lspconfig")
			end,
		},
		{
			"echasnovski/mini.nvim",
			init = function()
				require("mini.completion").setup({})
				require("mini.pairs").setup()
				require("mini.cursorword").setup()
				require("mini.icons").setup()
				require("mini.jump").setup()
				require("mini.notify").setup()
				require("mini.tabline").setup()
				require("mini.surround").setup()
			end,
		},
		{
			"williamboman/mason.nvim",
			init = function()
				require("mason").setup()
			end,
		},
		{
			"mhartington/formatter.nvim",
			init = function()
				require("../configs/formatter")
			end,
		},
		{
			"zk-org/zk-nvim",
			init = function()
				require("zk").setup({})
			end,
		},
	},
})
