" pathogen
execute pathogen#infect()

" 256 mode
set t_Co=256

" colorscheme
colorscheme molokai
let g:molokai_original = 1
"set background=dark

" syntax
syntax on

" highlight cursor location
set cursorline
set cursorcolumn
hi CursorLine term=underline cterm=underline guibg=underline

" tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set smarttab
set autoindent
set cindent

" various configs
set number
set mouse=c
set hlsearch
set incsearch
set ignorecase
set smartcase
set splitright
set splitbelow

" backup settings
set noswapfile
set nobackup

" mappings
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <C-e> :tabclose<CR>
nnoremap <silent> <C-h> :tabprev<CR>
nnoremap <silent> <C-l> :tabnext<CR>
nnoremap <silent> <S-h> :tabmove -1<CR>
nnoremap <silent> <S-l> :tabmove +1<CR>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="dark"
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

