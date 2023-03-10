call plug#begin()

"--SERVER LANGUAJES & COMPLETION
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': 'CocEnable'}
Plug 'folke/trouble.nvim'

"--UTILITIES
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'gelguy/wilder.nvim'
Plug 'https://github.com/yamatsum/nvim-cursorline'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'wfxr/minimap.vim'

"-- WINDOW SLIGHTLIGHT PLUGINS

"--Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"--GREP
Plug 'dyng/ctrlsf.vim'

"--STARTIFY

"--COLORSCHEMES
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rainglow/vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'shaunsingh/moonlight.nvim'
Plug 'nxvu699134/vn-night.nvim'

"--STATUS BARS & TABBARS
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'

"--ICOS
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"------- PLUGINS CONFIG -------------------------------
"------------------------------------------------------
source $HOME/.config/nvim/plugs/configs/treesitter_conf.vim
source $HOME/.config/nvim/plugs/configs/trouble_conf.vim
source $HOME/.config/nvim/plugs/configs/coc_conf.vim
source $HOME/.config/nvim/plugs/configs/schemes_conf.vim
source $HOME/.config/nvim/plugs/configs/lualine_conf.vim
source $HOME/.config/nvim/plugs/configs/barbar_conf.vim
source $HOME/.config/nvim/plugs/configs/wilder_conf.vim
source $HOME/.config/nvim/plugs/configs/nvtree_conf.vim
source $HOME/.config/nvim/plugs/configs/cursorline_conf.vim
source $HOME/.config/nvim/plugs/configs/indentLines_config.vim
source $HOME/.config/nvim/plugs/configs/CtrlSF_conf.vim
source $HOME/.config/nvim/plugs/configs/multi-cursor_conf.vim
source $HOME/.config/nvim/plugs/configs/colorschemes/tokyodark_conf.vim
source $HOME/.config/nvim/plugs/configs/colorschemes/moonlight_conf.vim

