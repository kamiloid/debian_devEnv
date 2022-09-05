
lua << EOF

require("twilight").setup{}

EOF


command! TE :TwilightEnable
command! TD :TwilightDisable

imap <A-z> <ESC>:Twilight<CR>
nmap <A-z> <ESC>:Twilight<CR>
vmap <A-z> <ESC>:Twilight<CR>
