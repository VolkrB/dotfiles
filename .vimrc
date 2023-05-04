
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'julienr/vim-cellmode'
Plug 'Valloric/YouCompleteMe'
Plug 'psf/black'
call plug#end()
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
map <C-n> :NERDTreeToggle<CR>
let g:SimpylFold_docstring_preview = 1
nnoremap <space> za
vnoremap <space> zf

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

set background=dark
set showmatch

let g:ycm_server_python_interpreter=''
let g:ycm_autoclose_preview_window_after_insertion = 1
set belloff=all
set number
