source $HOME/.config/nvim/setup/options.vim
source $HOME/.config/nvim/plugs/configs/compe_conf.vim
" source $HOME/.config/nvim/plugs/configs/coc_conf.vim
"

lua << EOF
	vim.cmd('CocDisable')
	vim.cmd('LspStart')
	vim.cmd("KCompeEnable")
	vim.cmd("inoremap <silent><expr> <CR> compe#confirm({ 'keys': '<CR>', 'select': v:true })")
EOF
