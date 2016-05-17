:map <C-\> :NERDTree <Enter>
:map <S-\> :NERDTreeClose <Enter>
set laststatus=2
set clipboard+=unnamed

"set mouse=a


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Python Config
"
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

syntax on

filetype plugin indent on

color desert

set number

"set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
"set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
"           \ [%l/%L\ (%p%%)
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly
execute pathogen#infect()
call pathogen#helptags()

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
hi StatusLine ctermbg=none cterm=bold

" Ruler
hi ColorColumn guibg=Blue ctermbg=Black
let &colorcolumn=join(range(80, 80), ",")
"let &colorcolumn=join(range(100, 100),",")

