""""""""""""""""""""""""""""""""""""""""
" pathogen
""""""""""""""""""""""""""""""""""""""""

execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""
" taglist plugin
""""""""""""""""""""""""""""""""""""""""

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

""""""""""""""""""""""""""""""""""""""""
" markdown plugin
""""""""""""""""""""""""""""""""""""""""

let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""""""""""""
" color
""""""""""""""""""""""""""""""""""""""""

if has("syntax")
    syntax on                           " color of syntax
endif
set term=xterm-256color
"set background=dark
"set background=light
"colorscheme torte
"colorscheme koehler
colorscheme desert
"colorscheme darkblue
"colorscheme blink
"colorscheme default

""""""""""""""""""""""""""""""""""""""""
" indent
""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
set expandtab                           " replace tab to space
set tabstop=4                           " a tab is four spaces
set softtabstop=4
set shiftwidth=4                        " number of spaces to use for autoindenting
set cindent

""""""""""""""""""""""""""""""""""""""""
" search
""""""""""""""""""""""""""""""""""""""""

set hlsearch                            " highlight search terms
set ignorecase                          " ignore case when searching
set incsearch                           " show search matches as you type

""""""""""""""""""""""""""""""""""""""""
" filetype
""""""""""""""""""""""""""""""""""""""""

"filetype plugin on

""""""""""""""""""""""""""""""""""""""""
" status line
"""""""""""""""""""""""""""""""""""""""""

set showtabline=0
set laststatus=2
set statusline=%F:\ %l

""""""""""""""""""""""""""""""""""""""""
" paste
""""""""""""""""""""""""""""""""""""""""

set pastetoggle=<F2>                    " turn off auto-indent when pasting text

""""""""""""""""""""""""""""""""""""""""
" mapping
" 
" nmap - Display normal mode maps
" imap - Display insert mode maps
" vmap - Display visual and select mode maps
" smap - Display select mode maps
" xmap - Display visual mode maps
" cmap - Display command-line mode maps
" omap - Display operator pending mode maps
""""""""""""""""""""""""""""""""""""""""

nmap <silent> <F5> :TlistToggle<CR><C-W><C-W>
nmap <F7> :set number!<CR>
nmap <F8> ggVG=
nmap <F10> :map<CR>

" buffer next
nmap <TAB> :bn<CR>
" buffer previous
nmap <S-TAB> :bp<CR>
" ctags
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

""""""""""""""""""""""""""""""""""""""""
" history
""""""""""""""""""""""""""""""""""""""""

"Restore cursor position
if has("autocmd")
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
endif

""""""""""""""""""""""""""""""""""""""""
" misc
""""""""""""""""""""""""""""""""""""""""

set number                              " always show line numbers
set nocompatible
set hidden                              " in order to switch between buffers with unsaved change
set linebreak
set encoding=utf-8
"set fileencodings=utf-8
"set backspace=2                        " we can use backspace in INSERT mode
set mouse=v
