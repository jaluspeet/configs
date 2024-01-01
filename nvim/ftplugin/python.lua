-- makeprg
vim.cmd([[setlocal makeprg=PYTHONPATH=$(pwd)\ python3\ %]])

-- errorformat
vim.cmd([[setlocal errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m]])
