call pathogen#infect()
set nocompatible
syntax enable

let g:solarized_termcolors=256
colorscheme solarized

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
inoremap %% %  %<Esc>hi


nmap <leader>q :%s/\s\+$//<CR> "Remove trailing whitespace
nmap <leader>d <Plug>Kwbd
map <leader>p :set invpaste<CR>
map <leader>b :Gblame<CR>
map <leader>st :Gstatus<CR>
nmap <leader>e :BufExplorer<CR>
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
set lcs=trail:·,tab:\|\ 
set scrolloff=3
set hidden
set nostartofline
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set statusline=%<%f\ %{fugitive#statusline()}%h%m%r%=%t\ \|\ %-14.(%l,%c%V%)\ %P
set laststatus=2
set ruler
set t_Co=256
set guioptions=
set nofoldenable

filetype plugin indent on
filetype plugin on

runtime macros/matchit.vim

au! BufRead,BufNewFile *.json setfiletype json

" Don't comment automatically
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let NERDTreeWinPos = 1
let NERDTreeShowBookmarks = 1
let g:CommandTMatchWindowAtTop = 1

iab ture true
