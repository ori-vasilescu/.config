set hidden

" enable local configs
set exrc
set secure

" keymaps
let mapleader = " "
let maplocalleader = " "

noremap <leader>v<leader> :edit ~/.config/nvim/init.vim<CR>

" paragraph aspect settings
set textwidth=79
set nowrap
set colorcolumn=80
set number
set relativenumber

set tabstop=4
set shiftwidth=4
set noexpandtab

set foldmethod=marker

" search settings
set nohls

"vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', {'as': 'dracula'}

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'puremourning/vimspector'
Plug 'nvim-telescope/telescope-vimspector.nvim'

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'

Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'skywind3000/asyncrun.vim'
Plug 'tim-clifford/vim-venus'

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'

call plug#end()

" language server (nvim-lspconfig)
lua << EOF
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.ccls.setup{}
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

" venus configs
nnoremap <leader>vd :let g:pandoc_defaults_file  = '~/.config/pandoc/pandoc.yaml' <CR>
nnoremap <leader>vl :let g:pandoc_defaults_file  = '~/.config/pandoc/pandoc_light.yaml' <CR>
let g:pandoc_defaults_file  = '~/.config/pandoc/pandoc.yaml' 
let g:pandoc_header_dir  = '~/.config/pandoc/headers'
let g:pandoc_options  = ''

" Telescope
nnoremap <leader>f  <cmd>Telescope git_files<CR>
nnoremap <leader>F  <cmd>Telescope find_files<CR>
nnoremap <leader>b  <cmd>Telescope buffers<CR>

" AsyncRun
let g:asyncrun_open = 8
