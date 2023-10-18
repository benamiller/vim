cd U:/github/
set splitright
set confirm
set noea
colorscheme habamax 

imap jj <Esc>

" Display line numbers
set number

hi StatusLine ctermbg=blue ctermfg=white gui=bold

" Left section of the status line: show current mode, file path relative to the working directory
set statusline=%#StatusLine#
set statusline+=%{mode()}\ 
set statusline+=%f

" Right section of the status line: show the line number, column number, and percentage through the file
set statusline+=%= 
set statusline+=%l,%c\ [%p%%]

" Always show the status line
set laststatus=2

" Set up vertical split netrw on startup
autocmd VimEnter * Vexplore

" Set the width of the netrw (file explorer) window
autocmd VimEnter * vertical resize 30

" Use tabs for indentation instead of spaces
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab

nnoremap <M-1> :exe "1wincmd w"<CR>
nnoremap <M-2> :exe "2wincmd w"<CR>
nnoremap <M-3> :exe "3wincmd w"<CR>
" ... and so on for however many windows you might typically have open

" Enable wildmenu for command-line autocompletion
set wildmenu

" Display a list when typing partial filenames
set wildmode=list:longest,full

" Start autocompletion as soon as you type a partial filename in the command-line mode
set wildcharm=<Tab>
cnoremap <Tab> <C-R>=wildmenumode() ? "\<Left>\<BS>\<Right>" : "\<Tab>"<CR>

inoremap <C-f> <C-x><C-f>

" Change the working directory to match the directory of the current file
autocmd BufEnter * lcd %:p:h

" Enable filetype detection and plugin
filetype plugin on

" Set the omnifunc based on the filetype (JavaScript included)
set omnifunc=syntaxcomplete#Complete

inoremap <C-Space> <C-x><C-o>

set shellslash
