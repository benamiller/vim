" Cool Theme for Neovim

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
let g:colors_name="cooltheme"

" Define basic colors
let s:bg = '#121212'
let s:fg = '#DADADA'

let s:red = '#FF6B6B'
let s:green = '#86C232'
let s:yellow = '#FFCB6B'
let s:blue = '#4B88A2'
let s:magenta = '#C792EA'
let s:cyan = '#76E3EA'
let s:white = '#EEFFFF'

" Apply colors to UI elements

" General UI
hi Normal guifg=fg guibg=bg
hi LineNr guifg=white guibg=bg
hi CursorLineNr guifg=blue guibg=bg
hi NormalNC guifg=white guibg=bg
hi VertSplit guifg=white guibg=bg

" Status line
hi StatusLine guifg=fg guibg=blue
hi StatusLineNC guifg=white guibg=bg

" Syntax highlighting
hi Comment guifg=green
hi Constant guifg=yellow
hi Identifier guifg=red
hi Statement guifg=blue
hi PreProc guifg=magenta
hi Type guifg=cyan
hi Special guifg=magenta
hi String guifg=yellow
hi Function guifg=blue
