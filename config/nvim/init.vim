" Set line numbers
set number
highlight LineNr term=bold cterm=NONE ctermfg=White ctermbg=Black gui=NONE guifg=Black guibg=LightGrey
set ruler

" Enable multiple unwritten buffers
set hidden

" Use 4 spaces for tabs, indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Configure line wrapping
" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
set wrap linebreak nolist
set textwidth=0
set wrapmargin=0
set formatoptions-=l

"
" Configure CUA mode
"

vnoremap <C-c> y

cnoremap <C-v> <MiddleMouse>
inoremap <C-v> <C-r>*
nnoremap <C-v> p
vnoremap <C-v> p

nnoremap <C-x> dd

noremap <C-z> u
inoremap <C-z> <Esc>ui
inoremap <C-r> <Esc><C-r>ea

