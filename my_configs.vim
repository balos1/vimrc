colo onedark

" Latex-Box and vim-tex don't play nice together.
" Polyglot includes Latex-Box so disable latex polyglot.
let g:polyglot_disabled = ['latex']

" Disable vimtex cause it crashes with large tex files
let g:vimtex_enabled = 1

set tabstop=2         " The width of a TAB (\t)
set number            " Show line numbers
set shiftwidth=2      " Indents will have a width of 2
set shiftround        " Indents will round to closet multiple of 2
set softtabstop=2     " Sets the number of columns for a TAB
set expandtab         " Expans TABs to spaces
set clipboard=unnamed " Use system clipboard

"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
"                           Bindings                           "
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

:let mapleader=","


" ~~~~~~~~~~~ Movement ~~~~~~~~~~~

"Remind me to use hjkl instead of arrow keys
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

"Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" ~~~~~~~~~~~~ TABS ~~~~~~~~~~~~~~
" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

" Easily create a new tab.
noremap <Leader>tN :tabnew<CR>
" Easily close a tab.
noremap <Leader>tc :tabclose<CR>
" Easily move a tab.
noremap <Leader>tm :tabmove<CR>
" Easily go to next tab.
noremap <Leader>tn :tabnext<CR>
" Easily go to previous tab.
noremap <Leader>tp :tabprevious<CR>


"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" ~~~~~~~~~~~~ VIM Multiple Cursor ~~~~~~~~~~~~~~~~~
" vim-multiple-cursors mappings
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
"                 File Type Specific                           "
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
autocmd FileType cmake setlocal commentstring=#\ %s
autocmd BufRead,BufNewFile *.cu set filetype=cuda
autocmd BufRead,BufNewFile *.cuh set filetype=cuda
autocmd BufRead,BufNewFile *.i set filetype=cpp

