" A short script to switch gvim in an orderly manner to Unicode processing.
" Maintainer: Tony Mechelynck, mailto:antoine.mechelynck@belgacom.net
" Last modified: 2003 Oct 12, 21:29 GMT
"
" This script endeavours to set the various options required to allow (g)vim
" to process Unicode files properly, without, for instance, messing up keyboard
" input.
"
" Installation:
" 1) Copy this script to your "user scripts" direcory,
"    i.e.: (direectory names below as required by the corresponding shell)
" 	o for Unix (with sh or similar):
" 	  $HOME/.vim/scripts
"
" 	o for Windows (with COMMAND.COM, CMD.EXE or similar)
" 	  - if you have a HOME directory
" 	    %HOME%\vimfiles\scripts
"
" 	  - if you don't; but have a VIM directory
" 	    %VIM%\vimfiles\scriprs
"
" 	  - otherwise, it will usually be something similar to one of the
" 	    following, depending on where you installed Vim (take your pick):
" 	    C:\VIM\vimfiles\scripts
" 	    "C:Program Files\VIM\vimfiles\scripts"
" 	    C:\PROGRA~1\VIM\vimfiles\scripts
" 	    C:\vimfiles\scripts
"
" 2) Open the script in a text editor such as Vim.
" There are two settings at the end which you might want to comment away.
"
"
" How to use it: simply add the following line to your vimrc, if and when you
" want to switch over to UTF-8 processing:
"
" 	runtime scripts/set_utf8.vim


" check for compiled-in capabilities
if ! has("multi_byte")
	echoerr "Sorry, Unicode capabilities are not compiled-in"
	finish
endif

" avoid messing up the keyboard encoding
if &termencoding == ""
	let &termencoding = &encoding
endif

" if "printencoding" is supported, avoid messing it up
if exists("+printencoding") && (&printencoding == "")
	let &printencoding = &encoding
endif

" make sure that existing Unicode files will be recognised when possible
set fileencodings-=ucs-bom
set fileencodings-=utf-8
if (&fileencodings == "") && (&encoding != "utf-8")
	let &fileencodings = &encoding
endif
set fileencodings^=ucs-bom,utf-8

" the following is the switchover itself
set encoding=utf-8

" everything from here onwards in optional
" The settings below are recommended;
" you may change them or comment them out.

" to have newly created files use UTF-8 encoding
setglobal fileencoding=utf-8

" to use a BOM with newly created Unicode files
setglobal bomb
