" Ensure we're in a compatible environment
if !has('nvim')
    finish
endif

" Clear existing definitions
hi clear
if exists("syntax_on")
    syntax reset
endif

" Define general theme properties
set background=dark
let g:colors_name="dusktouch"

" Define basic colors
let s:bg = '#383C46'  " Lighter background
let s:fg = '#A2A8B3'  " Less bright foreground

let s:red = '#D4858A'  " Muted red
let s:green = '#8FAD92'  " Muted green
let s:yellow = '#D9B286'  " Muted yellow
let s:blue = '#6C8FB2'  " Muted blue
let s:magenta = '#B397D1'  " Muted magenta
let s:cyan = '#6B9BA7'  " Muted cyan
let s:white = '#C4CCD5'  " Muted white

" Apply colors to UI elements

" General UI
hi Normal guifg=s:fg guibg=s:bg
hi LineNr guifg=s:white guibg=s:bg
hi CursorLineNr guifg=s:blue guibg=s:bg
hi NormalNC guifg=s:white guibg=s:bg
hi VertSplit guifg=s:fg guibg=s:bg

" Status line
hi StatusLine guifg=s:bg guibg=s:cyan
hi StatusLineNC guifg=s:fg guibg=s:bg

" Syntax highlighting
hi Comment guifg=s:green
hi Constant guifg=s:magenta
hi Identifier guifg=s:red
hi Statement guifg=s:blue
hi PreProc guifg=s:yellow
hi Type guifg=s:cyan
hi Special guifg=s:magenta
hi String guifg=s:yellow
hi Function guifg=s:cyan
