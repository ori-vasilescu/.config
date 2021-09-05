" paragraph aspect settings
set textwidth=79
set colorcolumn=80
set number
set relativenumber

" search settings
set nohls

"vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', {'as': 'dracula'}

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'

call plug#end()

" language server (nvim-lspconfig)
lua << EOF
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
EOF
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" colourscheme
colorscheme dracula
highlight   Normal ctermbg=NONE
highlight   Normal guibg=NONE
set         termguicolors
