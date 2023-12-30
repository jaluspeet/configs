vim.api.nvim_create_autocmd('TermOpen', { command = 'setlocal nonumber norelativenumber | startinsert' })
vim.api.nvim_create_autocmd('BufWritePre', { command = "lua vim.lsp.buf.format({async = true})" })
