-- makeprg
vim.cmd([[setlocal makeprg=cargo\ run]])

-- errorformat
vim.cmd([[\%-G%\\s%#Downloading%.%#,
            \%-G%\\s%#Checking%.%#,
            \%-G%\\s%#Compiling%.%#,
            \%-G%\\s%#Finished%.%#,
            \%-G%\\s%#error:\ Could\ not\ compile\ %.%#,
            \%-G%\\s%#To\ learn\ more\\,%.%#,
            \%-G%\\s%#For\ more\ information\ about\ this\ error\\,%.%#,
            \%-Gnote:\ Run\ with\ \`RUST_BACKTRACE=%.%#,
            \%.%#panicked\ at\ \\'%m\\'\\,\ %f:%l:%c]])
