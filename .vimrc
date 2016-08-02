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
set nonumber " hide line numbers

" pasting
set viminfo='65,<1500,s100,h

" ignore case when searching
set ic

" custom file types and syntax highlighting
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.twig set filetype=php
au BufRead,BufNewFile *.vtl set filetype=html
au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.xjs set filetype=javascript
au BufRead,BufNewFile *.ts set filetype=javascript

" move up/down on wrapped lines (visible lines) 
" default is to move by line numbers, so wrapped paragraphs are skipped
map j gj
map k gk
map <Up> g<Up>
map <Down> g<Down>

