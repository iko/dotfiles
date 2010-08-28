syntax enable

"colorscheme scite
"colorscheme Dark
colorscheme anotherdark

nmap <F2> :bn<CR>
nmap <F3> :bp<CR>
nmap <F4> :NERDTreeToggle<CR>
map <leader>p :set invpaste<CR>
" Grabbed from http://rffr.de/latex_tips
map  :w!:!clear; echo Making Postscript % ...; pdflatex %; xdvi %<.dvi& 

vmap <C-C> "+y

noremap <Up> gk
noremap <Down> gj

inoremap () ()<Esc>i
inoremap {} {}<Esc>i
inoremap [] []<Esc>i

inoremap "" ""<Esc>i
inoremap '' ''<Esc>i

nnoremap <leader>d "=strftime("%d.%m %Y")<CR>p
nnoremap <leader>dt "=strftime("%H:%M %d.%m %Y")<CR>p

set expandtab
retab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set smartindent
set autoindent
set list
set listchars=trail:·
set scrolloff=3
set hidden
set nostartofline
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set statusline=%<%f\ %h%m%r%=%t\ \|\ %-14.(%l,%c%V%)\ %P
set laststatus=2 
set ruler
set t_Co=256
set guioptions=

filetype plugin indent on
filetype plugin on

runtime macros/matchit.vim
runtime /home/iko/.vim/set_utf8.vim 

au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.ejs set filetype=xhtml

let NERDTreeWinPos = 1

