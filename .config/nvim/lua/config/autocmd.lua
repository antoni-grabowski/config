vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Format on write",
	group = vim.api.nvim_create_augroup("format-on-save", {}),
	callback = function ()
		vim.lsp.buf.format()
	end
})
