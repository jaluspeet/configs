vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>q', ':q!<CR>', { desc = "Quit" })
vim.keymap.set('n', '<leader>,', ':b#<CR>', { desc = "Prev buffer" })
vim.keymap.set('n', '<leader>.', ':bNext<CR>', { desc = "Next buffer" })

vim.keymap.set('n', '<leader><leader>', ':Telescope find_files<CR>', { desc = "Files" })
vim.keymap.set('n', '<leader>s', ':Telescope live_grep<CR>', { desc = "Search" })
vim.keymap.set('n', '<leader>p', ':Telescope projects<CR>', { desc = "Projects" })
vim.keymap.set('n', '<leader>e', ':Lex<CR><CR>', { desc = "Explorer" })

vim.keymap.set('n', '<F5>', ':silent make | copen<CR>', { desc = "Make" })
vim.keymap.set('n', '<C-F5>', ':silent make % | copen<CR>', { desc = "Run" })

vim.keymap.set('n', '<leader>d', ':Telescope diagnostics<CR>', { desc = "Diagnostics" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Prev Diagnostic" })

vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, { desc = "Signature help" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Declaration" })
vim.keymap.set('n', 'gd', ':Telescope lsp_definitions<CR>', { desc = "Definition" })
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>', { desc = "Implementation" })
vim.keymap.set('n', 'gt', ':Telescope lsp_type_definitions<CR>', { desc = "Type definition" })
vim.keymap.set('n', 'gr', ':TroubleToggle lsp_references<CR>', { desc = "References" })
vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, { desc = "Action" })

vim.keymap.set('n', '<C-h>', '<C-W><C-H>')
vim.keymap.set('n', '<C-j>', '<C-W><C-J>')
vim.keymap.set('n', '<C-k>', '<C-W><C-K>')
vim.keymap.set('n', '<C-l>', '<C-W><C-L>')
vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-W><C-H>')
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-W><C-J>')
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-W><C-K>')
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-W><C-L>')
