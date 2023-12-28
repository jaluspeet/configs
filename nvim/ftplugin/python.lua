-- makeprg
vim.cmd([[setlocal makeprg=PYTHONPATH=$(pwd)\ python3\ %]])

-- errorformat
vim.cmd([[setlocal errorformat=
      \%*\\sFile\ \"%f\"\\,\ line\ %l\\,\ %m,
      \%*\\sFile\ \"%f\"\\,\ line\ %l,]])
