vim.o.termguicolors = true
vim.cmd([[colo lunaperche]])

-- fixes
vim.api.nvim_set_hl(0, 'StatusLine', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'VertSplit', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })

-- syntax
vim.api.nvim_set_hl(0, 'String', { fg = 'lightblue' })
vim.api.nvim_set_hl(0, 'Comment', { fg = 'grey', italic = true })
vim.api.nvim_set_hl(0, 'Function', { fg = 'pink', bold = true })
