set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-airline/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'kchmck/vim-coffee-script'
Plugin 'editorconfig/editorconfig-vim'

" Continuosly update session files. Use :Obsess to create a new session.
Plugin 'tpope/vim-obsession'

Plugin 'saltstack/salt-vim'

" Change cursor shape in insert mode, smarter pasting, etc.
Plugin 'wincent/terminus'

Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Airline
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set laststatus=2

" Don't show error when using C++11 {} constructors.
let c_no_curly_error=1

set switchbuf=usetab
au FileType python setlocal softtabstop=2 tabstop=2 shiftwidth=2

set autoindent
set nosmartindent
set tabstop=2
set shiftwidth=2
set expandtab

autocmd Filetype python setlocal ts=4 sts=4 sw=4

set mouse=a

syntax on

set incsearch
set number

set scrolloff=5 " Keep 5 lines below and above the cursor

set backspace=indent,eol,start

" Following settings are from https://kinbiko.com/vim/my-shiniest-vim-gems/ .
set cursorline " Highlight the row the cursor is currently on.
" set cursorcolumn - same but for the column.

" Highlight trailing whitespace.
set listchars=tab:\ \ ,trail:·
set list

" Make J merge commented out lines correctly.
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

" Configure ack.vim to use ag for searching.
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

