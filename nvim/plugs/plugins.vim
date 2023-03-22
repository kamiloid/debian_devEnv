call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

"--SERVER LANGUAJES & COMPLETION
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': 'CocEnable'}
Plug 'maxmellon/vim-jsx-pretty'

"" Complete lsp utils:
"" https://github.com/ray-x/navigator.lua

"--UTILITIES
"Plug 'famiu/nvim-reload'
Plug 'voldikss/vim-floaterm'
"" Plug 'liuchengxu/vim-clap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'gelguy/wilder.nvim'
Plug 'https://github.com/yamatsum/nvim-cursorline'
"Plug 'folke/twilight.nvim'
"Plug 'lukas-reineke/indent-blankline.nvim'
"Plug 'wfxr/minimap.vim'
 Plug 'preservim/nerdtree'

"-- WINDOW SLIGHTLIGHT PLUGINS
"Plug 'vjos/Shade.nvim'
" Plug 'https://github.com/blueyed/vim-diminactive'

"--Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"--GREP
Plug 'dyng/ctrlsf.vim'

"--STARTIFY
 Plug 'mhinz/vim-startify'

"--COLORSCHEMES
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rainglow/vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'shaunsingh/moonlight.nvim'
Plug 'nxvu699134/vn-night.nvim'

"--STATUS BARS & TABBARS
Plug 'nvim-lualine/lualine.nvim'
" Plug 'romgrk/barbar.nvim'
Plug 'https://github.com/kdheepak/tabline.nvim'

"--ICOS
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"------- PLUGINS CONFIG -------------------------------
"------------------------------------------------------
source $HOME/.config/nvim/plugs/configs/telescope_conf.vim
source $HOME/.config/nvim/plugs/configs/telescope_fb_conf.vim
source $HOME/.config/nvim/plugs/configs/treesitter_conf.vim
source $HOME/.config/nvim/plugs/configs/schemes_conf.vim
source $HOME/.config/nvim/plugs/configs/lualine_conf.vim
"" source $HOME/.config/nvim/plugs/configs/barbar_conf.vim
source $HOME/.config/nvim/plugs/configs/wilder_conf.vim
"source $HOME/.config/nvim/plugs/configs/LSPInstaller_conf.vim
"source $HOME/.config/nvim/plugs/configs/nvtree_conf.vim
source $HOME/.config/nvim/plugs/configs/cursorline_conf.vim
"source $HOME/.config/nvim/plugs/configs/goto_preview_conf.vim
"source $HOME/.config/nvim/plugs/configs/twilight_conf.vim
"source $HOME/.config/nvim/plugs/configs/indentLines_config.vim
"" source $HOME/.config/nvim/plugs/configs/lspUtils_conf.vim
"source $HOME/.config/nvim/plugs/configs/lspKind_conf.vim
"source $HOME/.config/nvim/plugs/configs/lspSignature_conf.vim
"source $HOME/.config/nvim/plugs/configs/shade_conf.vim
source $HOME/.config/nvim/plugs/configs/CtrlSF_conf.vim
source $HOME/.config/nvim/plugs/configs/multi-cursor_conf.vim
"source $HOME/.config/nvim/plugs/configs/trouble_conf.vim
source $HOME/.config/nvim/plugs/configs/colorschemes/tokyodark_conf.vim
source $HOME/.config/nvim/plugs/configs/colorschemes/moonlight_conf.vim
source $HOME/.config/nvim/plugs/configs/tabline_conf.vim
