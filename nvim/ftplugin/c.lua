-- makeprg
vim.cmd([[setlocal makeprg=clang\ -pedantic\ -g\ -lm\ %\ -o\ build/%:t:r]])

-- errorformat
vim.cmd([[setlocal errorformat=%f:%l:%c:\ %t%s:\ %m]])
