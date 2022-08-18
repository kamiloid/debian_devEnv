"EDITOR PROPS////////////////////////////
set relativenumber number
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cursorline
set cursorcolumn

"IMPORT VIM FILES
source $HOME/.config/nvim/plugs/plugins.vim
source $HOME/.config/nvim/plugs/packer-plugs.vim

set encoding=UTF-8

"COLORS & COLORSCHEME//////////////////
colorscheme gruvbox
set background=dark
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"COMMANDS///////////////////////////////
command! EXP :Explorer
command! FT :FloatermNew! --width=0.9 --height=0.9
command! CB :Clap buffers
command! CF :Clap files
command! CC :Clap colors
command! CY :Clap yanks

"KEY-BINDING////////////////////////////
"--SAVE FILE///////////////
imap <C-s> <ESC>:w!<CR>
nmap <C-s> <ESC>:w!<CR>
vmap <C-s> <ESC>:w!<CR>
"--RESET EDITOR////////////
imap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
nmap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
vmap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
"--QUIT////////////////////
imap <C-q> <ESC>:q!<CR>
nmap <C-q> <ESC>:q!<CR>
vmap <C-q> <ESC>:q!<CR>
"--TAB EXPLORER////////////
imap <A-b> <ESC>:Explore<CR>
nmap <A-b> <ESC>:Explore<CR>
vmap <A-b> <ESC>:Explore<CR>
"--NEW TAB
imap <A-t> <ESC>:tabnew<CR>:Explore<CR>
nmap <A-t> <ESC>:tabnew<CR>:Explore<CR>
vmap <A-t> <ESC>:tabnew<CR>:Explore<CR>
"--NEXT TAB
imap <A-RIGHT> <ESC>:tabnext<CR>
nmap <A-RIGHT> <ESC>:tabnext<CR>
vmap <A-RIGHT> <ESC>:tabnext<CR>
"--PREV TAB
imap <A-LEFT> <ESC>:tabprevious<CR>
nmap <A-LEFT> <ESC>:tabprevious<CR>
vmap <A-LEFT> <ESC>:tabprevious<CR>
"--CLOSE TAB
imap <A-q> <ESC>:NERDTreeClose<CR>:bdelete<CR>
nmap <A-q> <ESC>:NERDTreeClose<CR>:bdelete<CR>
vmap <A-q> <ESC>:NERDTreeClose<CR>:bdelete<CR>
"--REMOVE PANEL
imap <A-c> <ESC>:close<CR>
nmap <A-c> <ESC>:close<CR>
vmap <A-c> <ESC>:close<CR>
"--RESIZE RIGHT PANEL VERTICALLY
imap <A-m> <ESC>:vertical resize +5<CR>
nmap <A-m> <ESC>:vertical resize +5<CR>
vmap <A-m> <ESC>:vertical resize +5<CR>
"--RESIZE LEFT PANEL VERTICALLY
imap <A-n> <ESC>:vertical resize -5<CR>
nmap <A-n> <ESC>:vertical resize -5<CR>
vmap <A-n> <ESC>:vertical resize -5<CR>
"--RESIZE DOWN PANEL HORIZONTALLY
imap <A-N> <ESC>:resize +5<CR>
nmap <A-N> <ESC>:resize +5<CR>
vmap <A-N> <ESC>:resize +5<CR>
"--RESIZE UP PANEL HORIZONTALLY
imap <A-M> <ESC>:resize -5<CR>
nmap <A-M> <ESC>:resize -5<CR>
vmap <A-M> <ESC>:resize -5<CR>

"--TOGGLE DARK COLOR SCHEME
imap <A-k> <ESC>:set background=dark<CR>
nmap <A-k> <ESC>:set background=dark<CR>
vmap <A-k> <ESC>:set background=dark<CR>
"--TOGGLE LIGHT COLOR SCHEME
imap <A-l> <ESC>:set background=light<CR>
nmap <A-l> <ESC>:set background=light<CR>
vmap <A-l> <ESC>:set background=light<CR>
"--DIR FILES
imap <C-f> <ESC>:Files<CR>
nmap <C-f> <ESC>:Files<CR>
vmap <C-f> <ESC>:Files<CR>
"--NERD TREE TOGGLE
imap <C-b> <ESC>:NERDTreeToggle<CR>
nmap <C-b> <ESC>:NERDTreeToggle<CR>
vmap <C-b> <ESC>:NERDTreeToggle<CR>
