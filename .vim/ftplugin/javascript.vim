" Set indentation level
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

let g:jsx_ext_required = 0

map <LEADER>s :call ftplugin#javascript#OpenSrcAndTest()<CR>
