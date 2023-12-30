-- makeprg
if vim.fn.filereadable(vim.fn.getcwd() .. "/Makefile") == 1 then
	vim.cmd([[setlocal makeprg=make]])
else
	vim.cmd([[setlocal makeprg=clang++\ -pedantic\ -g\ -lm\ %\ -o\ build/%:t:r]])
end

-- errorformat
vim.cmd([[setlocal errorformat=%f:%l:%c:\ %t%s:\ %m]])
