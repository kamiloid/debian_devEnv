call plug#begin()

"--SERVER LANGUAJES & COMPLETION
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'

"--DEPS
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-clap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'gelguy/wilder.nvim'

"--STARTIFY
Plug 'mhinz/vim-startify'

"--COLORSCHEMES
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rainglow/vim'
Plug 'ghifarit53/tokyonight-vim'

"--STATUS BARS & TABBARS
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'

"--ICOS
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"------- PLUGINS CONFIG -------------------------------
"------------------------------------------------------
source $HOME/.config/nvim/plugs/lualine_conf.vim
source $HOME/.config/nvim/plugs/barbar_conf.vim
source $HOME/.config/nvim/plugs/wilder_conf.vim
source $HOME/.config/nvim/plugs/lsp_config.vim
