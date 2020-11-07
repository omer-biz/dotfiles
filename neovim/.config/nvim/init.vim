set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter	 * set norelativenumber
augroup END

" call plug#begin('~/.vim/plugged')
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/Colorizer'
Plug 'terryma/vim-multiple-cursors'
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

" markdown
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_command_for_global = 1
let g:mkdp_browser = 'qutebrowser'
colorscheme gruvbox 
set background=dark 

set tabstop=4
set shiftwidth=4
" set showtabline=2
" set expandtab

setlocal spell spelllang=en_us

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" no line wrap
set nowrap

nmap <Space> <C-w>
nmap <C-c> :ColorHighlight<CR>
nmap ` :Fern . -drawer -toggle<CR>

"  Ctlr-Bs
imap <C-BS> <C-W>

let g:fern#renderer = "nerdfont"
let g:airline_theme = 'onedark'

" use system clipboard
set clipboard+=unnamedplus


" airline config
" let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_spell=0
let g:airline_detect_spelllang=0
