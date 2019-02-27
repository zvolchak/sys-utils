set laststatus=2
set clipboard+=unnamed

set paste

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set expandtab

set listchars=tab:>-,trail:~
set list

syntax on
filetype plugin indent on
color desert
set number
set mouse=a

hi ColorColumn guibg=Blue ctermbg=Black
let &colorcolumn=join(range(80, 80), ",")
