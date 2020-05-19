

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'dracula/vim', { 'as': 'dracula' }

" Initialize plugin system
call plug#end()

" https://github.com/dracula/vim/issues/96#issuecomment-402274366
let g:dracula_colorterm = 0

filetype plugin indent on

" set t_Co=256

" custom vim config
syntax on
colorscheme dracula

"set correct line count
"https://webdevetc.com/blog/show-line-numbers-in-vim-relative-and-absolute
set relativenumber
set number
set number relativenumber


"change curosr in insert mode:
"https://gitlab.com/gnachman/iterm2/issues/7207
"TODO: try to look at this: https://developer.ibm.com/tutorials/l-vim-script-5/
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" tab sizes
" https://stackoverflow.com/questions/2054627/how-do-i-change-tab-size-in-vim
:set tabstop=4
:set shiftwidth=4
:set expandtab