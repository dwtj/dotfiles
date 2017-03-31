"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration                                                        " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'romainl/flattened'
Plug 'scrooloose/syntastic'
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

" Syntax highlighting style:
syntax enable
set background=dark
colorscheme flattened_dark

" Automatically turn on syntax highlighting according to file type.
syntax enable
set filetype=on

" More intuitive window splitting direction:
set splitbelow
set splitright

" Tab management:
nnoremap tn :tabnew<CR>
nnoremap te :tabedit<space>
nnoremap tc :tabclose<CR>

" Tab navigation:
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tm :tabm<space>
nnoremap ts :tab split<CR>

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

" Display comments with italic font.
highlight Comment cterm=italic

" Auto re-read file whenever another process changes it.
set autoread

" Eliminating delays on Esc
set timeoutlen=1000 ttimeoutlen=10
