:set number
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set scrolloff=5
:set nowrap
:set formatoptions-=t

let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'martinsione/darkplus.nvim'

call plug#end()

nnoremap <C-]> :ALEGoToDefinition<cr>
nnoremap <C-[> :ALEFindReferences<cr>
nnoremap <C-h> :ALEHover<cr>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq<CR>
nnoremap <C-e> :NERDTreeToggle<cr>
:tnoremap <Esc> <C-\><C-n>
colorscheme darkplus

let g:ale_linters = {'rust':['analyzer']}
set clipboard+=unnamedplus
