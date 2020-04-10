syntax on
set backspace=indent,eol,start
set number
" use jj for escape
" I personally use Ctrl-[ but you do you
imap jj <Esc>
" switch panes w/ ctrl-<direction>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
call plug#begin('~/.vim/plugged')
" file browser
" has a bit of a learning curve tbh
Plug 'vim-nerdtree/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" nice colored status bar at the bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" shows lines that have changed (via git)
Plug 'mhinz/vim-signify'
" git commands for vim (tbh i dont use it but it seems handy)
Plug 'tpope/vim-fugitive'
" fuzzy searching
" BY FAR the best time-saver plugin
" Switch files, go to function, search project and go to that line, etc.
" fuzzy means that you don't have to type the whole words out
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" nginx syntax highlighting
Plug 'chr4/nginx.vim'
" sublime-like multiple cursors
" i don't use it as much as i thought i would but a lot of potential here
"Plug 'terryma/vim-multiple-cursors'
" smooth scrolling so you don't get lost when searching
Plug 'terryma/vim-smooth-scroll'
" clear highlight when you move the cursor out/other event
Plug 'haya14busa/is.vim'
" essential for working in Golang projects
" has most of the features I'd use in GoLand
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Initialize plugin system
call plug#end()
" default filebrowser kinda sucks
let NERDTreeHijackNetrw=1
" you'll have to install fonts for powerline support but it makes your
" terminal way cooler
" powerline font support (i.e. icons and stuff)
let g:airline_powerline_fonts = 1
set t_Co=16
" tag is a script i have that just runs ctags --exclude=.git --exclude=vendor -R .
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'tag'
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" autoformat go files
let g:go_fmt_command = "goimports"
" theme
set background=dark
" smooth scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
" default leader = \ (why??)
" leader = spacebar
let mapleader = " "
" resize hotkeys
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" indent properly
filetype plugin indent on
" file-specific syntax
set expandtab ts=4 sw=4 ai
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,README.md  setf markdown
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType go setlocal ts=4 sts=4 sw=4 noexpandtab
" Hotkeys via fzf <C-g> = CTRL-g
nnoremap <C-g> :Tags<Cr>
nnoremap <C-x> :BTags<Cr>
nnoremap <C-p> :Files<Cr>
nnoremap <C-a> :Ag<Cr>
" experimenting w/ using spacebar as leading key instead of CTRL-<key>
nnoremap <silent> <Leader>g :Tags<Cr>
nnoremap <silent> <Leader>x :BTags<Cr>
nnoremap <silent> <Leader>p :Files<Cr>
nnoremap <silent> <Leader>a :Ag<Cr>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" NERDTree hotkey
nnoremap <C-e> :NERDTreeToggle<CR>
" only case sensitive if you have a cap letter
set ignorecase
set smartcase
" autosearch
set incsearch
" highlight search
" is.vim turns off highlight automatically
set hlsearch
" center screen during search (a bit wonky)
cnoremap <expr> <CR> getcmdtype() == '/' ? '<CR>zz' : '<CR>'
" hybrid line numbers (relative normally & absolute on line w/ cursor)
" HIGHLY recommend to be fast w/ vim
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set number norelativenumber
augroup END

