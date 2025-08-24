return{
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
		{
			"mason-org/mason.nvim",
			opts = {}
		}
	},
	config = function()
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("ts_ls")
	end
}

