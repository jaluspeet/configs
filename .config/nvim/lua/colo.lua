vim.o.termguicolors = true
vim.cmd([[colo lunaperche]])

-- fixes
vim.api.nvim_set_hl(0, 'StatusLine', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'VertSplit', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'TelescopeNormal', { link = 'NormalFloat' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg='#1c1c1c', fg='#1c1c1c' })
vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg='#1c1c1c', fg='#1c1c1c' })

-- syntax
vim.api.nvim_set_hl(0, 'String', { fg = 'lightblue' })
vim.api.nvim_set_hl(0, 'Comment', { fg = 'grey', italic = true })
vim.api.nvim_set_hl(0, 'Function', { fg = 'pink', bold = true })
