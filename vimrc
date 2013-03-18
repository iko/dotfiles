let g:pathogen_disabled = ["syntastic"]
call pathogen#infect()
call pathogen#helptags()
set nocompatible
syntax enable

let g:solarized_termcolors=256
"set background=dark
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


nmap Y y$
nmap <leader>q :%s/\s\+$//<CR> "Remove trailing whitespace
nmap <leader>D <Plug>Kwbd
nmap <leader>d :lcl<CR>
map <leader>p :set invpaste<CR>
map <leader>b :Gblame<CR>
map <leader>T :CommandTBuffer<CR>
map <leader>F :CommandTFlush<CR>
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
set cursorline

filetype plugin indent on
filetype plugin on

runtime macros/matchit.vim

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.hamstache set ft=haml

" Don't comment automatically
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let NERDTreeWinPos = 1
let NERDTreeShowBookmarks = 1
let g:CommandTMatchWindowAtTop = 1

let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

let g:bufExplorerShowTabBuffer=1
let g:bufExplorerShowRelativePath=1

iab ture true
iab widht width
iab conosle console
iab conosole console
