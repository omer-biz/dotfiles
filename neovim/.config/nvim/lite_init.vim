set number relativenumber
let mapleader = ' '

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter	 * set norelativenumber
augroup END

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

call plug#end()

colorscheme gruvbox 
set background=dark 

nmap <Leader>a vgU<Esc>
nmap <Leader>A vgu<Esc>

set tabstop=4
set shiftwidth=4
set expandtab
" set showtabline=2

setlocal spell spelllang=en_us

set nowrap
nmap <Leader> <C-w>

vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+P
