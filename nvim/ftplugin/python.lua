-- makeprg
if vim.fn.filereadable(vim.fn.getcwd() .. "/Makefile") == 1 then
	vim.cmd([[setlocal makeprg=make]])
else
	vim.cmd([[setlocal makeprg=PYTHONPATH=$(pwd)\ python3\ %]])
end

-- errorformat
vim.cmd([[setlocal errorformat=
\%*\\sFile\ \"%f\"\\,\ line\ %l\\,\ %m,
\%*\\sFile\ \"%f\"\\,\ line\ %l,
]])
