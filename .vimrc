" pathogen plugin
execute pathogen#infect()

" autorun NERDtree ( if needed )
"autocmd VimEnter * NERDTree

" plugin stuffs
filetype plugin indent on

" color themes
syntax enable
set background=dark
colorscheme solarized

" text formatting
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

" information
set number " show line numbers

" pasting
set viminfo='65,<1500,s100,h

" custom file types and syntax highlighting
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.twig set filetype=php
au BufRead,BufNewFile *.vtl set filetype=html

