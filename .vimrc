source $VIMRUNTIME/defaults.vim

set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter	 * set norelativenumber
augroup END

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vimwiki/vimwiki'

call plug#end()

colorscheme gruvbox 
set background=dark 

set tabstop=4

setlocal spell spelllang=en_us
