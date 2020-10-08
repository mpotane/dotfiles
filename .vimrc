" Manual:

" enter the current millenium{{{
set nocompatible

" enable synxtax and plugins (for netrw)
filetype plugin indent on
syntax on

" NUMBERING:
set nu

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" TAG JUMPING:

" Create the tags `tags` file (may need to install ctags first)
command! MakeTags !ctags -R

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags

" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for just this FILE
" - ^x^f for FILENAMES (works with our path trick!)
" - ^x^] for TAGS only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

" SNIPPETS:

" Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" NOW WE CAN:
" - Take over the world!
"   (with much fewer keystrokes)

"FOLDER METHOD
set foldmethod=marker

"use ranger instead of netrw
let g:ranger_replace_netrw = 1

" }}}

" Plugins:

" Specify a directory for plugins {{{
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/preservim/nerdcommenter.git'

Plug 'https://github.com/itchyny/lightline.vim.git'

Plug 'https://github.com/dracula/vim.git'

Plug 'https://github.com/jiangmiao/auto-pairs.git'

Plug 'https://github.com/francoiscabrol/ranger.vim.git'

" Initialize plugin system
call plug#end()

" }}}

"COLORSCHEME:
" {{{
colorscheme dracula
"}}}
