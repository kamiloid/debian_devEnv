lua << EOF

local shade = require'plugs.configs.myShade'
shade.setup({
  overlay_opacity = 50,
  opacity_step = 1,
})

shade.toggle()
function active_shade()
	shade.on()
end

EOF

command! KShadeOn :lua require'plugs.configs.myShade'.on()
command! KShadeOff :lua require'plugs.configs.myShade'.off()

" lua active_shade()
