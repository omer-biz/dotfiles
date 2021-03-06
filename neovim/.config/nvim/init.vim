set number relativenumber

let mapleader = ' '

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
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" uppercase a letter
nmap <Leader>a vgU<Esc>
nmap <Leader>A vgu<Esc>

" markdown preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_command_for_global = 1
" let g:mkdp_browser = 'qutebrowser'
let g:mkdp_browser = 'firefox'

" markdown
let g:vim_markdown_strikethrough = 1

" vimwiki
set nocompatible
filetype plugin on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
" set showtabline=2

setlocal spell spelllang=en_us


" no line wrap
set nowrap

nmap <Leader> <C-w>
nmap <C-c> :ColorHighlight<CR>
nmap ` :Fern . -drawer -toggle<CR>

" delete a word
imap <C-i> <ESC>dawa

let g:fern#renderer = "nerdfont"
" let g:airline_theme = 'gruvbox'

" airline config
" let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_spell=0
let g:airline_detect_spelllang=0
set noshowmode

vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+P

colorscheme gruvbox 
set background=dark 

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" taking screenshots and inserting them markdown style :)
nnoremap <C-s> :!$HOME/.local/scripts/screenshot.sh<CR><CR>i![](<ESC>"*pA)<Home><Right><Right>

