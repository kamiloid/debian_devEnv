"EDITOR PROPS////////////////////////////
set number relativenumber
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

sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=
sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=
sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=
sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=

au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=350}

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
"PLUGINS INSTALL AND SETUP///////////////////////
source $HOME/.config/nvim/plugs/plugins.vim
source $HOME/.config/nvim/plugs/packer-plugs.vim
"COMMANDS///////////////////////////////
command! EXP :Explorer
command! KComment :CommentToggle
command! KPathFiles :Files
command! KMiniMap :MinimapToggle
command! KFormat :Format tab_width=4<CR>
"///////////////////////////////////////////
source $HOME/.config/nvim/setup/keymaps.vim
"//////////////////////////////////////////
source $HOME/.config/nvim/setup/global_funcs.vim
"///////////////////////////////////////////////
"////COLOR CONFIGURATION
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
set t_Co=256
source $HOME/.config/nvim/setup/colorscheme.vim
set background=dark


"////AUTOCOMPLETE MENU COLOR
" You can use the following highlight groups:
" Pmenu – normal item
" PmenuSel – selected item
" PmenuSbar – scrollbar
" PmenuThumb – thumb of the scrollbar
" hi Pmenu guibg=DarkCyan guifg=Cyan
" hi PmenuSel guibg=cyan

hi Pmenu guibg=#2b2b2b guifg=#666666
hi PmenuSel guibg=#455861 guifg=#74a9c2


