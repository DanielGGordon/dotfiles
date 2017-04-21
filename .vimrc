" Some parts of this vimrc taken from:
"   vim.wikia.com/wiki/Example_vmrc

set term=xterm-256color

" Better command line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" F7 will now indent the whole file. Give it a shot!
map <F7> mzgg=G`z

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" vim should never beep at you or make actual noises.
" Remote server won't beep at you anyway
" set visualbell

" Enable use of the mouse for all modes
" WHAT YOU CAN DO THIS IN VIM??????????
" set mouse=a
" Darn - this means dragging your mouse to select puts you in visual mode


" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2

"
" This is some sort of addon that helps with quickly installing vim plugins.
" See vim-pathogen github repository for more information:
"    https://github.com/tpope/vim-pathogen
execute pathogen#infect()
filetype plugin indent on
syntax on

" move to beginning/end of line, and unmap ^ and $
" Haven't used this yet, but could be helpful
" 'B' = go to 'B'eginning of line
" 'E' = go to 'E'nd of line
" nnoremap B ^
" nnoremap E $


" Set all indents to be 2 spaces. No tabs!
" See info on tabs/spaces in vim:
"   http://vim.wikia.com/wiki/Indenting_source_code
set expandtab
set shiftwidth=2
set softtabstop=2

" Make it easier to quit without saving
" Maybe this is 'too' easy. Consider removing 'enter'
nnoremap ZX :q!<Enter>

" This remapping of :cq is helpful in cases where you don't want to commit something
" This will force quit out of vim - so if you accidentally did a git commit --amend, the ammend will fail
" Whereas typing :q! will still mean the git commit --amend is successful
nnoremap QQ :cq<Enter>

" Always start at the first line of the file when using git commit
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

" The `:set paste` command can be toggled with a hotkey
" TODO: Have this, or another command, to do pastetoggle, and then go into
"   insert mode
set pastetoggle=<F2>

" Toggle the line numbers with ^N^N
:nmap <C-N><C-N> :set invnumber<CR>
" With some nice coloring
highlight LineNr term=bold cterm=NONE ctermfg=LightGreen ctermbg=NONE gui=NONE guifg=DarkGreen guibg=NONE

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Use search and replace by putting cursor at replacement word
" Usage - in normal mode, type backslash and then 's'.
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Airline Settings
"     https://github.com/vim-airline/vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='murmur'
" Enable the list of buffers to be shown on the top of vim
" Pretty awesome. Should be default IMO
let g:airline#extensions#tabline#enabled = 1

" Use the powerline symbols. This will only work if you add a powerline font
" to your terminal.
" See https://github.com/powerline/fonts for powerline fonts
let g:airline_powerline_fonts = 1
set laststatus=2
"


" Random vim tips and notes
"
" :%d or ggdG -> delete all lines from the file
" gd          -> go to declaration of current variable your cursor is on.
"                jump back by pressing '' or `` or ^o
" D or d$     -> delte until the end of line
~
