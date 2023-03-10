lua << EOF

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
use {
	'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}
use {
	"startup-nvim/startup.nvim",
	requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	config = function()
	require"startup".setup()
	end
}
use { "nvim-telescope/telescope-file-browser.nvim" }
use "AckslD/nvim-neoclip.lua"
use "rebelot/kanagawa.nvim"
use ({"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker")
		end,
	})
end)

EOF

source $HOME/.config/nvim/plugs/configs/telescope_conf.vim
source $HOME/.config/nvim/plugs/configs/startup_conf.vim
source $HOME/.config/nvim/plugs/configs/neoclip_conf.vim
source $HOME/.config/nvim/plugs/configs/colorpicker_conf.vim
source $HOME/.config/nvim/plugs/configs/telescope_fb_conf.vim
