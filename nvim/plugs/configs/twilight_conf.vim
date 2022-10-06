
lua << EOF

require("twilight").setup{}

EOF


command! KTwilight :Twilight
command! KTwilightEnable :TwilightEnable
command! KTwilightDisable :TwilightDisable

imap <leader>zz <ESC>:Twilight<CR>
nmap <leader>zz <ESC>:Twilight<CR>
vmap <leader>zz <ESC>:Twilight<CR>
