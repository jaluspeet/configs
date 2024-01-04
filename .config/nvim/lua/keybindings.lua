vim.g.mapleader = ' '


-- do / open stuff
vim.keymap.set('n', '<leader><leader>', ':Telescope find_files<CR>', { desc = "Files" })
vim.keymap.set('n', '<leader>s', ':Telescope live_grep<CR>', { desc = "Search" })
vim.keymap.set('n', '<leader>p', ':Telescope projects<CR>', { desc = "Projects" })
vim.keymap.set('n', '<leader>f', ':Lex<CR><CR>', { desc = "Explorer" })
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, { desc = "Action" })
vim.keymap.set('n', '<leader>c', ':make ', { desc = "Make" })
vim.keymap.set({ 'n', 'i', 't' }, '<C-s>', ':Run', { desc = 'Run command' })


-- lsp
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, { desc = "Signature help" })
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>', { desc = "Implementation" })
vim.keymap.set('n', 'gt', ':Telescope lsp_type_definitions<CR>', { desc = "Type definition" })
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>', { desc = "References" })

vim.api.nvim_set_keymap('n', '<leader>e', ':lua vim.diagnostic.setloclist()<CR>', { desc = 'Diagnostics' })
vim.api.nvim_set_keymap('n', 'ge', ':lua vim.diagnostic.goto_prev()<CR>', { desc = 'Prev diagnostic' })
vim.api.nvim_set_keymap('n', 'gE', ':lua vim.diagnostic.goto_next()<CR>', { desc = 'Next diagnostic' })

vim.keymap.set('n', '<leader>d', ':Telescope lsp_dynamic_workspace_symbols<CR>', { desc = "Symbols" })
vim.keymap.set('n', 'gd', ':Telescope lsp_definitions<CR>', { desc = "Definition" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Declaration" })


-- move around
vim.keymap.set('n', '<leader>,', ':b#<CR>', { desc = "Prev buffer" })
vim.keymap.set('n', '<leader>.', ':bnext<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<leader>q', ':q!<CR>', { desc = "Close buffer" })

vim.keymap.set('n', '<C-Tab>', ':tabnext<CR>', { desc = "Next tab" })
vim.keymap.set('n', '<C-S-Tab>', ':tabprevious<CR>', { desc = "Prev tab" })
vim.keymap.set('n', '<C-w>', ':tabclose<CR>', { desc = "Close tab" })
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { desc = "New tab" })

vim.keymap.set('n', '<C-h>', '<C-W><C-H>', { desc = 'Go left' })
vim.keymap.set('n', '<C-j>', '<C-W><C-J>', { desc = 'Go down' })
vim.keymap.set('n', '<C-k>', '<C-W><C-K>', { desc = 'Go up' })
vim.keymap.set('n', '<C-l>', '<C-W><C-L>', { desc = 'Go right' })
vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-W><C-H>', { desc = 'Go left' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-W><C-J>', { desc = 'Go down' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-W><C-K>', { desc = 'Go up' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-W><C-L>', { desc = 'Go right' })
