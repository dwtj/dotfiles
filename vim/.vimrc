"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Vundle Configuration                                                  " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Bundle 'vim-pandoc/vim-pandoc'
Bundle 'vim-pandoc/vim-pandoc-syntax'
"Bundle 'vim-scripts/rfc-syntax'
Bundle 'junegunn/goyo.vim'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'dag/vim2hs'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-sensible'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'scrooloose/nerdtree'
"Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'christoomey/vim-tmux-navigator'
"Bundle 'lyuts/vim-rtags'
"Bundle 'gilligan/vim-lldb'
Bundle 'wting/rust.vim'
Bundle 'lervag/vim-latex'
Bundle 'avakhov/vim-yaml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My Custom Stuff                                                             " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic Typing
set backspace=indent,eol,start

" Solarized
syntax enable
set background=dark
colorscheme solarized

" Copy/Paste Support.
vmap <Leader>y y:call system("pbcopy", getreg("\""))<CR>
nmap <Leader>p :call setreg("\"",system("pbpaste"))<CR>p

" Automatically turn on syntax highlighting according to file type.
syntax enable
set filetype=on

" Mouse scroll-wheel support via SIMBL and MouseTerm.
if has("mouse")
    set mouse=a
    map <ScrollWheelUp> <C-Y>
    map <ScrollWheelDown> <C-E>
endif

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
nnoremap <leader>g :Goyo<CR>
autocmd! User GoyoLeave
autocmd  User GoyoLeave nested source ~/.vimrc

" Syntastic
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
nnoremap <leader>l<space> :Lcommand<space>
nnoremap <leader>lw :Lhide<space>
nnoremap <leader>lW :Lshow<space>
nnoremap <leader>lc :Lcontinue<CR>
nnoremap <leader>ls :Lstep<CR>
nnoremap <leader>ln :Lnext<CR>
nnoremap <leader>lf :Lfinish<CR>
nnoremap <leader>lb :Lbreakpoint<CR>
nnoremap <leader>lb<space> :Lbreakpoint<space>
nnoremap <leader>lp :Lprint<CR>
nnoremap <leader>lp<space> :Lprint<space>

" Add some additional known file extensions.
au BufRead,BufNewFile *.ccap set filetype=ccap
au BufRead,BufNewFile *.ll set filetype=llvm
au BufRead,BufNewFile *.td set filetype=tablegen
