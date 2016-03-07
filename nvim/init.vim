"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=.config/nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('.config/nvim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('tomasr/molokai')
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('scrooloose/nerdcommenter')
call dein#add('rstacruz/sparkup')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')
"call dein#add('nvie/vim-togglemouse')
call dein#add('Rip-Rip/clang_complete')
call dein#add('SirVer/ultisnips')
"call dein#add('ctrlpvim/ctrlp')
call dein#add('bling/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('Lokaltog/powerline-fonts')
call dein#add('vim-scripts/zim-syntax')
call dein#add('saltstack/salt-vim')
call dein#add('ekalinin/Dockerfile.vim')
call dein#add('dhruvasagar/vim-table-mode')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"change the leader key to ,
let mapleader = ","

syntax on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

if has("autocmd")
    filetype plugin indent on
endif

set number      "Print line numbers
set showmatch   "Highlight matching bracket
set wildmenu    "Show available commands when pushing tab
"List of patterns to ignore for file name completion
set wildignore=CVS,.svn,.git,tags,*.swp,*.o,*~,*.pyc,*.class,*.obj,*.pdf,*.bak,*.out
set mouse=a     "Try to activate mouse support
set history=250 "Longer history (default is 20)

" Tab size and automatic tabulation
set shiftwidth=4
set softtabstop=4
set expandtab             " Tabulation made of spaces
set smarttab autoindent

set backspace=eol,start,indent  "Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l   "Don't stop the cursor at the beginning or the end of lines

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


set scrolloff=5      " keep at least 5 lines above/below
set sidescrolloff=5  " keep at least 5 lines left/right

set ignorecase  "Do case incensitive matching
set incsearch   "Incremental search
set hlsearch    "Highlight the search
"Press Enter after a search to toggle search highlighting
:nnoremap <CR> :nohlsearch<CR>/<BS>

" Show hidden characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" Shorcut to toggle 'set list'
nmap <leader>l :set list!<CR>

" Spell checking
set spelllang=en_us,fr,it
set spellfile=$HOME/Dropbox/spell/fr.utf-8.add

"map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
"map <silent> <F7> "<Esc>:silent setlocal spell! spelllang=en<CR>"
"map <silent> <F8> "<Esc>:silent setlocal spell! spelllang=it<CR>"

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" Move to next/previous misspelled word
map <leader>sn ]s
map <leader>sp [s
" Add word under cursor as a good word
map <leader>sa zg
" Find suggestion for bad word
map <leader>s? z=

" Activate spell for text files
"autocmd BufEnter *.txt set spell

"Open new horizontal splits to bottom and vertical splits to right
"to make the behaviour more natural
set splitbelow
set splitright

"Move swp files to sane location, to not disperse them everywhere
set backup      
set backupdir=$HOME/.vim/backup

" Print options
"set pdev=pdf
set printoptions=paper:A4,syntax:y,wrap:y,duplex:long,formfeed:y

" tab keyboard shortcut
":nmap <C-S-tab> :tabprevious<cr>
":nmap <C-tab> :tabnext<cr>
:nmap <C-PageUp> :tabprevious<cr>
:nmap <C-PageDown> :tabnext<cr>
":imap <C-S-tab> :tabprevious<cr>i
":imap <C-tab> :tabnext<cr>i
:nmap <C-t> :tabnew<cr>
:imap <C-t> :tabnew<cr>i
":map  <C-S-w> :tabclose<cr>

" Split panes movements with alt-directions
"nnoremap <M-Right> <C-W><Right>
"nnoremap <M-Left> <C-W><Left>
"nnoremap <M-Up> <C-W><Up>
"nnoremap <M-Down> <C-W><Down>

" Move the splits arround
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"strip all trailing whitespace from the file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
"open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l

" Raccourci pour sauver un fichier avec les droits du 'root' :w!! 
cmap w!! w !sudo tee % >/dev/null

" Raccourci pour éditer le vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

"" Recharger le fichier vimrc automatiquement après chaque sauvegarde
"if has("autocmd")
"    autocmd bufwritepost .vimrc source $MYVIMRC
"endif

" Activation / Désactivation du mode collage
" Annule l'indentation automatique
set pastetoggle=<F2>

if $term != "linux"
    " Set terminal colors to 256
    set t_Co=256
endif

" Save the session with SSAnom_session
nmap SSA :wa<CR>:mksession! ~/.vim/sessions/

" Open the session with SOnom_session
nmap SO :wa<CR>:so ~/.vim/sessions/

" Coloration syntaxique pour les templates twig (Symfony2)
au BufRead,BufNewFile *.twig set syntax=htmljinja

" Swap two split window
" How does it work ?
" Mark a window to move with leader mw
" Go to the window you want to swap
" Make the swap with leader pw
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>

"statusline
"set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

" Automatically read file when it has been changed 
" by another application
set autoread

if &term != "linux" && &term != "vte"
    " Set terminal colors to 256
    set t_Co=256
    colorscheme molokai
endif

if &term == "putty-256color"
    set t_kN=^[[6~
    set t_kP=^[[5~
endif

"colorscheme molokai
"colorscheme default

" If inside tmux session
if &term == "screen-256color"
    " When inside tmux session, use alt+shift+arrow
    " to move between splits
    nmap <silent> <A-S-Up> :wincmd k<CR>
    nmap <silent> <A-S-Down> :wincmd j<CR>
    nmap <silent> <A-S-Left> :wincmd h<CR>
    nmap <silent> <A-S-Right> :wincmd l<CR>
endif

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Make Vim recognize XTerm escape sequences for Page and Arrow
" keys combined with modifiers such as Shift, Control, and Alt.
" See http://www.reddit.com/r/vim/comments/1a29vk/_/c8tze8p
if &term =~ '^screen'
  " Page keys http://sourceforge.net/p/tmux/tmux-code/ci/master/tree/FAQ
  execute "set t_kP=\e[5;*~"
  execute "set t_kN=\e[6;*~"

  " Arrow keys http://unix.stackexchange.com/a/34723
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

"colorscheme molokai
"colorscheme default

" If inside tmux session
if &term == "screen-256color"
    " When inside tmux session, use alt+shift+arrow
    " to move between splits
    nmap <silent> <A-S-Up> :wincmd k<CR>
    nmap <silent> <A-S-Down> :wincmd j<CR>
    nmap <silent> <A-S-Left> :wincmd h<CR>
    nmap <silent> <A-S-Right> :wincmd l<CR>
endif

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Make Vim recognize XTerm escape sequences for Page and Arrow
" keys combined with modifiers such as Shift, Control, and Alt.
" See http://www.reddit.com/r/vim/comments/1a29vk/_/c8tze8p
if &term =~ '^screen'
  " Page keys http://sourceforge.net/p/tmux/tmux-code/ci/master/tree/FAQ
  execute "set t_kP=\e[5;*~"
  execute "set t_kN=\e[6;*~"

  " Arrow keys http://unix.stackexchange.com/a/34723
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" Allow Ctrl+Left/Right when vim is running inside tmux
"map ^[[1;5D <c-left>
"map ^[[1;5C <c-left>
"map ^[[1;5A <c-up>
"map ^[[1;5B <c-down>
" Only useful if those 2 lines are not in .tmux.conf :
"     set -g default-terminal \"xterm\"
"     setw -g xterm-keys on

" Clang_complete options
"
"let g:clang_exec = '/usr/local/bin/clang'
" highlight the warnings and errors
let g:clang_hl_errors=1
" open quickfix window on error
let g:clang_complete_copen=1
" use libclang directly, fast due to caching
let g:clang_use_library=1
" tell clang_complete where to find libclang
let g:clang_library_path="/usr/lib64/llvm/libclang.so"

" Coloration syntaxique pour les fichiers de zim
au BufRead,BufNewFile *.txt if getline(1) =~ '^Content-type: text/x-zim-wiki$' | set syntax=zim | endif

if has("autocmd")
    autocmd BufRead,BufNew *.txt set noexpandtab
endif

if has("autocmd")
    " Considérer l'extension md comme Markdown et pas Modula
    autocmd BufRead,BufNew *.md set filetype=markdown
endif

nnoremap <leader>md :%!pandoc -o output.html<CR>

"pretty print json file
nnoremap <leader>j :%!python -m json.tool<CR>

"if getline(1) =~ '^Content-type: text/x-zim-wiki$'
"    set syntax zim
"    setfiletype zim
"endif

" Populate the airline_symbols dictionary with the proper glyphs 
" for various symbols.
" You must copy the desired otf font files from powerline-fonts bundle to
" .local/share/fonts/ and run "fc-cache -fv" command.
" Then, if you are using gnome-terminal, you must also change the terminal 
" default font from the preference dialog.
let g:airline_powerline_fonts=1

" Setting the theme for airline
let g:airline_theme='powerlineish'
"let g:airline_theme='molokai'

" decrease the delay when leaving 'Insert Mode'
" but give enough time to input long leader commands
set timeout timeoutlen=1000 ttimeoutlen=200

" Enable search of filename with accents.
let g:ctrlp_key_loop=1
