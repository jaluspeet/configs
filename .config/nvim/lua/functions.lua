-- Run a command in terminal, if no command is provided, it runs the last one
function Run(opts)
    if opts.args and opts.args ~= '' then
        vim.api.nvim_set_var('last_command', opts.args)
    end

    local lastCommand = vim.api.nvim_get_var('last_command') or ''

    local expandedArgs = {}

    for arg in lastCommand:gmatch('%S+') do
        table.insert(expandedArgs, vim.fn.expand(arg))
    end

    local expanded = table.concat(expandedArgs, ' ')
    require('toggleterm').exec(expanded, 1, 12)
end

vim.api.nvim_create_user_command('Run', Run, { nargs = '?' })
