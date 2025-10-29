return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		telescope = require('telescope.builtin')
		vim.keymap.set('n', '<leader><leader>', telescope.find_files)
	end
}
