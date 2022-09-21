call plug#begin()

"--SERVER LANGUAJES & COMPLETION
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'rmagatti/goto-preview'

Plug 'https://github.com/onsails/lspkind.nvim'

" https://github.com/ray-x/lsp_signature.nvim
Plug 'ray-x/lsp_signature.nvim'

" https://github.com/RishabhRD/nvim-lsputils
" Plug 'RishabhRD/popfix'
" Plug 'RishabhRD/nvim-lsputils'
"
" Complete lsp utils:
" https://github.com/ray-x/navigator.lua

"--DEPS
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-clap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'gelguy/wilder.nvim'
Plug 'https://github.com/yamatsum/nvim-cursorline'

Plug 'terryma/vim-multiple-cursors'
Plug   'eugen0329/vim-esearch'

Plug 'folke/twilight.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

"--STARTIFY
" Plug 'mhinz/vim-startify'

"--COLORSCHEMES
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rainglow/vim'
Plug 'ghifarit53/tokyonight-vim'

"--STATUS BARS & TABBARS
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'wfxr/minimap.vim'

"--ICOS
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"------- PLUGINS CONFIG -------------------------------
"------------------------------------------------------
source $HOME/.config/nvim/plugs/configs/lualine_conf.vim
source $HOME/.config/nvim/plugs/configs/barbar_conf.vim
source $HOME/.config/nvim/plugs/configs/wilder_conf.vim
source $HOME/.config/nvim/plugs/configs/lsp_config.vim
source $HOME/.config/nvim/plugs/configs/LSPInstaller_conf.vim
source $HOME/.config/nvim/plugs/configs/nvtree_conf.vim
source $HOME/.config/nvim/plugs/configs/cursorline_conf.vim
source $HOME/.config/nvim/plugs/configs/goto_preview_conf.vim
source $HOME/.config/nvim/plugs/configs/twilight_conf.vim
source $HOME/.config/nvim/plugs/configs/indentLines_config.vim
" source $HOME/.config/nvim/plugs/configs/lspUtils_conf.vim
source $HOME/.config/nvim/plugs/configs/lspKind_conf.vim
source $HOME/.config/nvim/plugs/configs/lspSignature_conf.vim






