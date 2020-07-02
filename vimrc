"Enabling filetype support provides filetype-specific indenting,
"syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" Colorscheme
"let t_Co = 256
"let g:solarized_termcolors = &t_Co
"set background=dark
"set termguicolors
colorscheme monokai
"let g:solarized_termtrans = 1

" various settings
set autoindent                  " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start  " Proper backspace behavior.
set hidden                      " Possibility to have more than one unsaved buffers.
set incsearch                   " Incremental search, hit `<CR>` to stop.
set ruler                       " Shows the current line number at the bottom-right of the screen.
set wildmenu                    " Great command-line completion, use `<Tab>` to move around and `<CR>` to validate.
set number			            " Turn on line numbers
set ts=4 expandtab		        " Tabstop 4 spaces
set sw=4 smarttab		        "
set textwidth=79
set fo=wq

autocmd FileType tex,latex,context,plaintex setlocal fo=wtq
autocmd FileType tex,latex,context,plaintex setlocal inde=


" Lightline settings
set laststatus=2
set noshowmode

" Vim EasyAligin
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" VimTex settings
let g:vimtex_view_method='zathura'
let g:tex_flavor = "latex"

" Ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
