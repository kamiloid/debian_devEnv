call plug#begin()

"--SERVER LANGUAJES & COMPLETION
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'williamboman/nvim-lsp-installer'
Plug 'rmagatti/goto-preview'
Plug 'https://github.com/onsails/lspkind.nvim'
Plug 'folke/trouble.nvim'
" https://github.com/ray-x/lsp_signature.nvim
Plug 'ray-x/lsp_signature.nvim'
" https://github.com/RishabhRD/nvim-lsputils
" Plug 'RishabhRD/popfix'
" Plug 'RishabhRD/nvim-lsputils'
"
" Complete lsp utils:
" https://github.com/ray-x/navigator.lua

"--UTILITIES
Plug 'famiu/nvim-reload'
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-clap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'gelguy/wilder.nvim'
Plug 'https://github.com/yamatsum/nvim-cursorline'
Plug 'folke/twilight.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'sunjon/shade.nvim'
Plug 'wfxr/minimap.vim'

"--Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'terryma/vim-multiple-cursors'

"--GREP
Plug 'dyng/ctrlsf.vim'
" Plug 'eugen0329/vim-esearch'

"--STARTIFY
" Plug 'mhinz/vim-startify'

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
source $HOME/.config/nvim/plugs/configs/schemes_conf.vim
source $HOME/.config/nvim/plugs/configs/lualine_conf.vim
source $HOME/.config/nvim/plugs/configs/barbar_conf.vim
source $HOME/.config/nvim/plugs/configs/wilder_conf.vim
source $HOME/.config/nvim/plugs/configs/LSPInstaller_conf.vim
source $HOME/.config/nvim/plugs/configs/lsp_config.vim
source $HOME/.config/nvim/plugs/configs/nvtree_conf.vim
source $HOME/.config/nvim/plugs/configs/cursorline_conf.vim
source $HOME/.config/nvim/plugs/configs/goto_preview_conf.vim
source $HOME/.config/nvim/plugs/configs/twilight_conf.vim
source $HOME/.config/nvim/plugs/configs/indentLines_config.vim
" source $HOME/.config/nvim/plugs/configs/lspUtils_conf.vim
source $HOME/.config/nvim/plugs/configs/lspKind_conf.vim
source $HOME/.config/nvim/plugs/configs/lspSignature_conf.vim
" source $HOME/.config/nvim/plugs/configs/shade_conf.vim
source $HOME/.config/nvim/plugs/configs/CtrlSF_conf.vim
source $HOME/.config/nvim/plugs/configs/multi-cursor_conf.vim
source $HOME/.config/nvim/plugs/configs/trouble_conf.vim
source $HOME/.config/nvim/plugs/configs/colorschemes/tokyodark_conf.vim
source $HOME/.config/nvim/plugs/configs/colorschemes/moonlight_conf.vim


