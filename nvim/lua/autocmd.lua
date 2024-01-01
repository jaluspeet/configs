vim.api.nvim_create_autocmd('TermOpen', { command = 'setlocal nonumber norelativenumber | startinsert' })
vim.api.nvim_create_autocmd('BufWritePre', { command = "lua vim.lsp.buf.format({async = true})" })

vim.api.nvim_create_autocmd('BufWritePre', {
	callback = function()
		if vim.fn.filereadable(vim.fn.getcwd() .. "/Makefile") == 1 then
			vim.cmd([[setlocal makeprg=make]])
		end
	end
})
