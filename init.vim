" how many spaces are inserted in a tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set termguicolors
let g:coc_disable_startup_warning = 1
" Initialize vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }

" Install vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Install coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Add any other plugins here

" Load the plugins
call plug#end()

" vim-airline configuration
let g:airline_powerline_fonts = 1

" coc.nvim configuration
inoremap <expr> <tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <leader>co :CocConfig<CR>
