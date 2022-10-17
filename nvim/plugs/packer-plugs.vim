lua << EOF


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  "startup-nvim/startup.nvim",
	  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	  config = function()
	  require"startup".setup()
	  end
	}
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "nvim-telescope/telescope-file-browser.nvim" }
	use "terrortylor/nvim-comment"

	use ({"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker")
		end,
	})
	use 'matbme/JABS.nvim'

	use {"folke/zen-mode.nvim"}
--	use 'm4xshen/autoclose.nvim'
	use {'akinsho/git-conflict.nvim'}
	--COLORSCHEMES
	use "rebelot/kanagawa.nvim"
	use "AckslD/nvim-neoclip.lua"
	use "cljoly/telescope-repo.nvim"
	use { "LinArcX/telescope-ports.nvim" }
	use "nvim-telescope/telescope-packer.nvim"
	use "nvim-telescope/telescope-project.nvim"
	--use 'nanozuki/tabby.nvim'
	use 'kdheepak/tabline.nvim'
	use 'simrat39/symbols-outline.nvim'
end)


EOF


source $HOME/.config/nvim/plugs/configs/telescope_conf.vim
source $HOME/.config/nvim/plugs/configs/nvtree_conf.vim
source $HOME/.config/nvim/plugs/configs/startup_conf.vim
source $HOME/.config/nvim/plugs/configs/telescope_fb_conf.vim
source $HOME/.config/nvim/plugs/configs/colorpicker_conf.vim
source $HOME/.config/nvim/plugs/configs/JABS_conf.vim
source $HOME/.config/nvim/plugs/configs/zen-mode_conf.vim
source $HOME/.config/nvim/plugs/configs/git-conflicts_conf.vim
source $HOME/.config/nvim/plugs/configs/neoclip_conf.vim
" source $HOME/.config/nvim/plugs/configs/tabby_conf.vim
source $HOME/.config/nvim/plugs/configs/tabline_conf.vim
source $HOME/.config/nvim/plugs/configs/symbols-outline_conf.vim

lua require('nvim_comment').setup()



