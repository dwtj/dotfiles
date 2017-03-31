let g:pandoc#filetypes#handled = ["markdown", "rst"]
let g:pandoc#modules#enabled = ["formatting", "toc", "spell", "hypertext"]
"let g:pandoc#formatting#mode = "h"
let g:pandoc#formatting#textwidth = 79

" Spelling
autocmd InsertEnter * setlocal spell
autocmd InsertLeave * setlocal nospell

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$

set display=lastline
