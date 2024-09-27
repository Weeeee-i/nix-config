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
		  "hrsh7th/nvim-cmp",
		  dependencies = {
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		  },
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
