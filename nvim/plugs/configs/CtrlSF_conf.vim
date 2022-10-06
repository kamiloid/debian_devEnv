let g:ackprg = 'ag --nogroup --nocolor --column'

nmap <C-A-f> <ESC>:CtrlSF 

let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 0
    \}
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }
" or
let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_case_sensitive = 'no'
let g:ctrlsf_context = '-B 5 -A 3'
let g:ctrlsf_default_root = 'project'
"mode: normal - compact
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_extra_backend_args = {
    \ 'pt': '--home-ptignore'
    \ }
let g:ctrlsf_extra_root_markers = ['.root']
let g:ctrlsf_fold_result = 1
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_search_mode = 'async'
"position: left_local - right - right_local - top - bottom - left
let g:ctrlsf_position = 'bottom'
"position: bottom_inside - bottom_outside - top_inside - top_outside
let g:ctrlsf_compact_position = 'bottom_inside'
let g:ctrlsf_winsize = '30%'

