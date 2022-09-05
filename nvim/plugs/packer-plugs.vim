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

end)


EOF

source $HOME/.config/nvim/plugs/startup_conf.vim
source $HOME/.config/nvim/plugs/telescope_fb_conf.vim

lua require('nvim_comment').setup()
