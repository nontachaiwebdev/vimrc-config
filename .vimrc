call plug#begin('~/.vim/plugged')

"Vim Plugin
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'matze/vim-move'
Plug 'christoomey/vim-tmux-navigator'

"Vim theme Plugin
Plug 'vim-airline/vim-airline'

"Vim Codeing Syntax Highlight
Plug 'scrooloose/syntastic', { 'for': ['typescript', 'javascript', 'python', 'ruby', 'markdown', 'sh'] }

"Vim git Plugin
Plug 'airblade/vim-gitgutter'

call plug#end()

"Set global variable for vim-airline
let g:airline#extensions#tabline#enabled = 1

"Set remap for NERDTree
map <leader>n  :NERDTreeToggle<CR>

" Set syntastic config
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1

"Set vim option
:set number
:set mouse=a
:syntax on

" Fix vim-airline not appear unitl create new split
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Set vim-move - move line up/down
let g:move_key_modifier = 'C'

" Set ControlP Plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
