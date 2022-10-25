scriptencoding utf-8
" vim plugin to highlight .jrnl files based on your jrnl config
" Last Change: Thu Oct 20 03:40:14 PM EST 2022
" Maintainer: Wade Bowers
" License: MIT
" FileTypes: jrnl


" Prevent execution if already loaded 
if exists('g:loaded_jrnl')
    finish
endif
let g:loaded_jrnl = 1

let g:jrnl_valid_colors = ['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white']
let g:jrnl_config_colors = {'body':'','date':'','tags':'','title':''}
let g:jrnl_config = readfile(glob(g:jrnl_config_location))

function ParseJrnlConfig()
    for line in g:jrnl_config
        if len(split(line, ':')) > 1
            let tmp = split(line, ':')
            let key = trim(tmp[0])
            let color = trim(tmp[1])
            
            if index(g:jrnl_valid_colors, color) >= 0
                let g:jrnl_config_colors[key] = color
            endif
        endif
    endfor
endfunction