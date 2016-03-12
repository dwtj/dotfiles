"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration                                                        " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'junegunn/goyo.vim'
"Plug 'reedes/vim-pencil'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'dhruvasagar/vim-table-mode'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wting/rust.vim'
Plug 'lervag/vimtex'
Plug 'avakhov/vim-yaml'

" Add plugins to &runtimepath
call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My Custom Stuff                                                             " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic Typing
set backspace=indent,eol,start

" Solarized
syntax enable
set background=dark
colorscheme solarized

" Neovim-style clipboard configuration.
"set clipboard+=unnamedplus

" Automatically turn on syntax highlighting according to file type.
syntax enable
set filetype=on

" More intuitive window splitting direction:
set splitbelow
set splitright

" Window management:
"nnoremap Ws <C-w>s
"nnoremap Wv <C-w>v
"nnoremap Wc <C-w>c
"nnoremap Wt <C-w>T
"nnoremap W= <C-w>=
"nnoremap WV :vsplit<space>
"nnoremap WS :split<space>

" Window navigation:
"nnoremap Wh <C-w>h
"nnoremap Wj <C-w>j
"nnoremap Wk <C-w>k
"nnoremap Wl <C-w>l

" Tab management:
nnoremap tn :tabnew<CR>
nnoremap te :tabedit<space>
nnoremap tc :tabclose<CR>

" Tab navigation:
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tm :tabm<space>
nnoremap ts :tab split<CR>

" Goyo
"nnoremap <leader>g :Goyo<CR>
"autocmd! User GoyoLeave
"autocmd  User GoyoLeave nested source ~/.vimrc

" Syntastic
nnoremap <leader>s :SyntasticCheck<CR>
nnoremap <leader><S-s> :SyntasticToggleMode<CR>
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [],
    \ "passive_filetypes": [] }

" NERDTree (with NERDTreeTabs):
let g:NERDTreeMapActivateNode = '<space>'
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let g:nerdtree_tabs_open_on_new_tab = 0
nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <leader><S-n> :NERDTreeTabsToggle<CR>

" vim-lldb Leader-Based Keymappings:
"nnoremap <leader>l<space> :Lcommand<space>
"nnoremap <leader>lw :Lhide<space>
"nnoremap <leader>lW :Lshow<space>
"nnoremap <leader>lc :Lcontinue<CR>
"nnoremap <leader>ls :Lstep<CR>
"nnoremap <leader>ln :Lnext<CR>
"nnoremap <leader>lf :Lfinish<CR>
"nnoremap <leader>lb :Lbreakpoint<CR>
"nnoremap <leader>lb<space> :Lbreakpoint<space>
"nnoremap <leader>lp :Lprint<CR>
"nnoremap <leader>lp<space> :Lprint<space>

" Add some additional known file extensions.
au BufRead,BufNewFile *.ccap set filetype=ccap
au BufRead,BufNewFile *.ll set filetype=llvm
au BufRead,BufNewFile *.td set filetype=tablegen

" Add automatic use of vim-pencil
"augroup pencil
"  autocmd!
"  autocmd FileType markdown,mkd call pencil#init()
"  autocmd FileType pandoc       call pencil#init()
"  autocmd FileType text         call pencil#init()
"augroup END

" Display comments with italic font.
highlight Comment cterm=italic

" Auto re-read file whenever another process changes it.
set autoread
