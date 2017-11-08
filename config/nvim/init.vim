" Set line numbers
set number
highlight LineNr term=bold cterm=NONE ctermfg=White ctermbg=Black gui=NONE guifg=Black guibg=LightGrey
set ruler

" Sync Neovim and environment clipboards
set clipboard=unnamedplus

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

" Simplify navigation over long lines
inoremap <up> <Esc>gka
nnoremap <up> gk
inoremap <down> <Esc>gja
nnoremap <down> gj

" Buffer navigation
inoremap <C-Tab> <Esc>:b#<CR>
nnoremap <C-Tab> :b#<CR>
inoremap <F1> <Esc>:ls<CR>:b 
nnoremap <F1> :ls<CR>:b 

" Search results navigation
nnoremap <F3> n
nnoremap <S-F3> N

"
" Configure CUA mode
"

nnoremap <C-n> :enew<CR>

inoremap <expr> <C-s> bufname('%') == '' ? '<Esc>:save ':'<Esc>:w<CR>i'
nnoremap <expr> <C-s> bufname('%') == '' ? ':save ':':w<CR>'

vnoremap <C-c> y+

cnoremap <C-v> <MiddleMouse>
inoremap <C-v> <C-r>+
nnoremap <C-v> p
vnoremap <C-v> p

nnoremap <C-x> dd
vnoremap <C-x> d

noremap <C-z> u
inoremap <C-z> <Esc>ui
inoremap <C-r> <Esc><C-r>ea

nnoremap <C-w> :bw<CR>
