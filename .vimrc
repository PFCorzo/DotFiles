call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
call plug#end()
map <F2> :NERDTreeToggle<CR>
:set autoread
