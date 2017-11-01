" Enable multiple unwritten buffers
set hidden

" Configure line wrapping
" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
set wrap linebreak nolist
set textwidth=0
set wrapmargin=0
set formatoptions-=l

" Configure CUA mode
inoremap <C-v> <MiddleMouse>
vnoremap <C-c> "+y

