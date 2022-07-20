set number
set relativenumber
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType cwl setlocal ts=2 sts=2 sw=2 expandtab
