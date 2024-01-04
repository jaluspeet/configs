vim.o.termguicolors = true
vim.cmd([[colo lunaperche]])

vim.api.nvim_set_hl(0, 'VertSplit', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'TelescopeNormal', { link = 'NormalFloat' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#1c1c1c', fg = '#1c1c1c' })
vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = '#1c1c1c', fg = '#1c1c1c' })

vim.api.nvim_set_hl(0, 'String', { fg = '#75b6ff' })
vim.api.nvim_set_hl(0, 'Comment', { fg = 'grey', italic = true })
vim.api.nvim_set_hl(0, 'Function', { fg = 'lightblue', bold = true })

vim.api.nvim_set_hl(0, 'DiffAdd', { bg = '#006633' })
vim.api.nvim_set_hl(0, 'DiffChange', { bg = '#330066' })
vim.api.nvim_set_hl(0, 'DiffDelete', { bg = '#660033' })
