return{
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		'hrsh7th/cmp-nvim-lsp',
	},
	handlers = {
		function (server_name)
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require('lspconfig')[server_name].setup {
				capabilities = capabilities,
			}
		end
	}
}
