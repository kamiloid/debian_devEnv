" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:false

" Excludes buffers from the tabline
"let bufferline.exclude_ft = ['javascript']
"let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 1

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null


"------------------------------------------------------------------
"------------------------------------------------------------------


lua << EOF


-- !::exe [So]

local hl = require'bufferline.utils'.hl
local icons = require 'bufferline.icons'

return {
  --- Setup the highlight groups for this plugin.
  setup = function()

    --- @type barbar.util.Highlight
    local fg_target = {cterm = 'red'}
    fg_target.gui = fg_target.cterm

    local fg_current  = hl.fg_or_default({'Normal'}, '#efefef', 255)
    local fg_visible  = hl.fg_or_default({'TabLineSel'}, '#efefef', 255)
    local fg_inactive = hl.fg_or_default({'TabLineFill'}, '#888888', 102)

    local fg_modified = hl.fg_or_default({'WarningMsg'}, '#E5AB0E', 178)
    local fg_special  = hl.fg_or_default({'Special'}, '#599eff', 75)
    local fg_subtle = hl.fg_or_default({'NonText', 'Comment'}, '#555555', 240)

    local bg_current  = hl.bg_or_default({'Normal'}, 'none')
    local bg_visible  = hl.bg_or_default({'TabLineSel', 'Normal'}, 'none')
    local bg_inactive = hl.bg_or_default({'TabLineFill', 'StatusLine'}, 'none')

    --      Current: current buffer
    --      Visible: visible but not current buffer
    --     Inactive: invisible but not current buffer
    --        -Icon: filetype icon
    --       -Index: buffer index
    --         -Mod: when modified
    --        -Sign: the separator between buffers
    --      -Target: letter in buffer-picking mode
    hl.set_default('BufferCurrent',        bg_current, fg_current)
    hl.set_default('BufferCurrentIndex',   bg_current, fg_special)
    hl.set_default('BufferCurrentMod',     bg_current, fg_modified)
    hl.set_default('BufferCurrentSign',    bg_current, fg_special)
    hl.set_default('BufferCurrentTarget',  bg_current, fg_target, true)
    hl.set_default('BufferInactive',       bg_inactive, fg_inactive)
    hl.set_default('BufferInactiveIndex',  bg_inactive, fg_subtle)
    hl.set_default('BufferInactiveMod',    bg_inactive, fg_modified)
    hl.set_default('BufferInactiveSign',   bg_inactive, fg_subtle)
    hl.set_default('BufferInactiveTarget', bg_inactive, fg_target, true)
    hl.set_default('BufferTabpageFill',    bg_inactive, fg_inactive)
    hl.set_default('BufferTabpages',       bg_inactive, fg_special, true)
    hl.set_default('BufferVisible',        bg_visible, fg_visible)
    hl.set_default('BufferVisibleIndex',   bg_visible, fg_visible)
    hl.set_default('BufferVisibleMod',     bg_visible, fg_modified)
    hl.set_default('BufferVisibleSign',    bg_visible, fg_visible)
    hl.set_default('BufferVisibleTarget',  bg_visible, fg_target, true)

    hl.set_default_link('BufferCurrentIcon', 'BufferCurrent')
    hl.set_default_link('BufferInactiveIcon', 'BufferInactive')
    hl.set_default_link('BufferVisibleIcon', 'BufferVisible')
    hl.set_default_link('BufferOffset', 'BufferTabpageFill')

    icons.set_highlights()
  end
}


EOF


