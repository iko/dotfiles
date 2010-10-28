syntax enable

"colorscheme anotherdark
colorscheme molokai

let mapleader = ","

map <F1> <Esc>
imap <F1> <Esc>
nmap <F2> :bn<CR>
nmap <F3> :bp<CR>
nmap <F4> :NERDTreeToggle<CR>
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
inoremap <> <><Esc>i

nmap <leader>d :Bclose<CR>
nmap <leader>s :Sscratch<CR>
map <leader>p :set invpaste<CR>
map <leader>b :GitBlame<CR>
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

" Don't comment automatically
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:vimchant_spellcheck_lang = 'fi'
let g:molokai_original = 0
let NERDTreeWinPos = 1
let NERDTreeShowBookmarks = 1

