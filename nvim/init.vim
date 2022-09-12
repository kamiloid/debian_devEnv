"EDITOR PROPS////////////////////////////
set number
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cursorline
set cursorcolumn
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set wildmenu
set title
set ttimeoutlen=0
set splitbelow splitright
set t_Co=256
filetype plugin indent on
syntax on

set encoding=UTF-8

"ITALIC FONTS/////////////////////////
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

":EXPLORER SETTINGS//////////////////
let g:netrw_banner=1
let g:netrw_liststyle=3
let g:netrw_browse_split=0
let g:netrw_altv=0
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'

"IMPORT VIM FILES///////////////////////
source $HOME/.config/nvim/plugs/plugins.vim
source $HOME/.config/nvim/plugs/packer-plugs.vim

let NERDTreeWinPos=1

"COLORS & COLORSCHEME//////////////////
"colorscheme challenger_depp
colorscheme ayu
"colorscheme chocolate
"colorscheme chocolate-contrast
"colorscheme codecourse
"colorscheme codecourse-contrast
"colorscheme coffee
"colorscheme coffee-contrast
"colorscheme comrade-contrast
"colorscheme crackpot-contrast
"colorscheme crisp
"colorscheme gruvbox
"colorscheme dare-contrast
"colorscheme darkside
"colorscheme deep-space
"colorscheme downpour-contrast
"colorscheme earthsong
"colorscheme earthsong-contrast
"colorscheme flattened_dark
"colorscheme focuspoint
"colorscheme fooder
"colorscheme fooder-contrast
"colorscheme frantic-contrast
"colorscheme frontier
"colorscheme frontier-contrast
"colorscheme github-contrast
"colorscheme glance
"colorscheme glance-contrast
"colorscheme gloom
"colorscheme gloom-contrast
"colorscheme glowfish
"colorscheme glowfish-contrast
"colorscheme gotham
"colorscheme horizon-contrast
"colorscheme hub-contrast
"colorscheme iceberg
"colorscheme isotope-contrast
"colorscheme joker-contrast
"colorscheme jumper-contrast
"colorscheme kiwi-contrast
"colorscheme laravel-contrast
"colorscheme legacy-contrast
"colorscheme lichen-contrast
"colorscheme mauve-contrast
"colorscheme mintchoc-contrast
"colorscheme molocayo
"colorscheme monzo-contrast
"colorscheme mud-contrast
"colorscheme newton-contrast
"colorscheme otakon-contrast
"colorscheme overflow-contrast
"colorscheme peacock-contrast
"colorscheme peacocks-in-space-contrast
"colorscheme penitent-contrast
"colorscheme piggy-contrast
"colorscheme potpourri-contrast
"colorscheme prime-contrast
"colorscheme rainbow-contrast
"colorscheme rebellion
"colorscheme rebellion-contrast
"colorscheme scorch-contrast
"colorscheme slime-contrast
"colorscheme solarized8-slow
"colorscheme sonokay
"colorscheme spitfire-contrast
"colorscheme stark-contrast
"colorscheme storm
"colorscheme storm-contrast
"colorscheme tetra-contrast
"colorscheme tickle-contrast
"colorscheme tokionight
"colorscheme tonic-contrast
"colorscheme turnip
"colorscheme two-firewatch
"colorscheme userscape-contrast
"colorscheme vegetable-contrast
"colorscheme violaceus
"colorscheme warlock-contrast
"colorscheme waste
"colorscheme wonbat256mod
"colorscheme yitzchok-contrast
"colorscheme yule
"colorscheme yule-contrast
"colorscheme zacks
"colorscheme zacks-contrast
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" True color if available
let term_program=$TERM_PROGRAM
" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

"COMMANDS///////////////////////////////
command! EXP :Explorer
command! FT :FloatermNew! --width=0.9 --height=0.9
command! CB :Clap buffers
command! CF :Clap files
command! CC :Clap colors
command! CY :Clap yanks
command! CM :CommentToggle

"KEY-BINDING////////////////////////////
"--IDENTATION////////////////
imap <TAB> <ESC>:><CR>A
nmap <TAB> <ESC>:><CR>
vmap <TAB> :><CR>
"--BACK IDENTATION///////////
imap <S-TAB> <ESC>:<<CR>A
nmap <S-TAB> <ESC>:<<CR>
vmap <S-TAB> :<<CR>
"--SAVE FILE///////////////
imap <C-s> <ESC>:w!<CR>
nmap <C-s> <ESC>:w!<CR>
vmap <C-s> <ESC>:w!<CR>
"--RESET EDITOR////////////
imap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
nmap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
vmap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
"--QUIT////////////////////
" imap <C-q> <ESC>:q!<CR>
" nmap <C-q> <ESC>:q!<CR>
" vmap <C-q> <ESC>:q!<CR>
imap <C-q> <ESC>:lua Kclose_all()<CR>
nmap <C-q> <ESC>:lua Kclose_all()<CR>
vmap <C-q> <ESC>:lua Kclose_all()<CR>
"--CLOSE BUFFERS UNTIL EXPLORER//////////////////
imap <A-q> <ESC>:lua Kclose_buffers()<CR>
nmap <A-q> <ESC>:lua Kclose_buffers()<CR>
vmap <A-q> <ESC>:lua Kclose_buffers()<CR>
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
"--NVIMTREE_TOGGLE
imap <C-A-b> <ESC>:NvimTreeToggle<CR>
nmap <C-A-b> <ESC>:NvimTreeToggle<CR>
vmap <C-A-b> <ESC>:NvimTreeToggle<CR>
"--SHOW OPENED FIES
imap <C-A-l> <ESC>:buffer 
nmap <C-A-l> <ESC>:buffer 
vmap <C-A-l> <ESC>:buffer 
"--OPEN MINIMAP
imap <C-A-u> <ESC>:MinimapToggle<CR>
nmap <C-A-u> <ESC>:MinimapToggle<CR>
vmap <C-A-u> <ESC>:MinimapToggle<CR>
"--SHOW EDITABLE FILE SYSTEM
imap <C-A-e> <ESC>:edit 
nmap <C-A-e> <ESC>:edit 
vmap <C-A-e> <ESC>:edit 
"--CLOSE OPENED FIES
imap <C-A-d> <ESC>:bdelete 
nmap <C-A-d> <ESC>:bdelete 
vmap <C-A-d> <ESC>:bdelete  
"--MOVE UP 5 POINTS
imap <S-UP> <ESC>:-2<CR>
nmap <S-UP> <ESC>:-2<CR>
vmap <S-UP> <ESC>:-2<CR>
"--MOVE DOWN 5 POINTS
imap <S-DOWN> <ESC>:+2<CR>
nmap <S-DOWN> <ESC>:+2<CR>
vmap <S-DOWN> <ESC>:+2<CR>
"--MOVE UP 5 POINTS
imap <C-UP> <ESC>:-5<CR>
nmap <C-UP> <ESC>:-5<CR>
vmap <C-UP> <ESC>:-5<CR>
"--MOVE DOWN 5 POINTS
imap <C-DOWN> <ESC>:+5<CR>
nmap <C-DOWN> <ESC>:+5<CR>
vmap <C-DOWN> <ESC>:+5<CR>
"--UNDO
imap <C-z> <ESC>:undo<CR>
nmap <C-z> <ESC>:undo<CR>
vmap <C-z> <ESC>:undo<CR>
"--REDO
imap <C-y> <ESC>:redo<CR>
nmap <C-y> <ESC>:redo<CR>
vmap <C-y> <ESC>:redo<CR>
"--SELECT ALL LINES
imap <C-A-a> <ESC>G$v0gg
nmap <C-A-a> <ESC>G$v0gg
nmap <C-A-a> <ESC>G$v0gg
"--COMMENTS
imap <A-'> <ESC>:CommentToggle<CR>
nmap <A-'> :CommentToggle<CR>
vmap <A-'> :CommentToggle<CR>

"--ACTIVATE AUTOCOMPLETE SELECTION PRESSING ENTER IN COC
"REF: https://superuser.com/questions/1734914/neovim-coc-nvim-enter-key-doesnt-work-to-autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

lua << EOF

function Kclose_all()
	vim.cmd(":NERDTreeClose")
	vim.cmd(":NvimTreeClose")
	vim.cmd(":q!")
end

function Kbuffer_length()
	local count = 0
	local buffers = vim.fn.bufnr('$')
	for b = 1, buffers do
		count = count + vim.fn.buflisted(b)
	end
	return count;
end

function Kclose_buffers()
	local current_buffer = vim.api.nvim_get_current_buf()
	local name = vim.api.nvim_buf_get_name(current_buffer)
	local count = Kbuffer_length()
	if count > 1 then
		vim.cmd(":NERDTreeClose")
 		vim.cmd(":NvimTreeClose")
		vim.api.nvim_buf_delete(current_buffer, { force })
		return
	end
	if name ~= '' then
		vim.api.nvim_buf_delete(0, { force })
		vim.cmd(":NvimTreeOpen")
		--vim.cmd(":Telescope file_browser")
		--vim.cmd(":NERDTreeFocus")
		--vim.cmd(":Startify")
		--vim.cmd(":Explore")
	end
end

EOF

