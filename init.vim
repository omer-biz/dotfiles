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

call plug#end()

colorscheme gruvbox 
set background=dark 

set tabstop=4
set shiftwidth=4
set expandtab

setlocal spell spelllang=en_us

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" no line wrap
set nowrap
