" inherit from markdown
setlocal syntax=markdown

let s:body = 'white'
let s:date = 'blue'
let s:tags = 'red'
let s:title = 'magenta'

if len(g:jrnl_config_location) >= 1
    let s:body = len(g:jrnl_config_colors['body']) >= 1 ? g:jrnl_config_colors['body'] : s:body
    let s:date = len(g:jrnl_config_colors['date']) >= 1 ? g:jrnl_config_colors['date'] : s:date
    let s:tags = len(g:jrnl_config_colors['tags']) >= 1 ? g:jrnl_config_colors['tags'] : s:tags
    let s:title = len(g:jrnl_config_colors['title']) >= 1 ? g:jrnl_config_colors['title'] : s:title
endif

syntax match jrnlDate /\[.\{-}\]/ 
syntax match jrnlTitle /\s.\{-}\ze\s/ contained contains=jrnlTag
syntax match jrnlTag /@.\{-}\w\+/
syntax region jrnlHeader start=/^\[\d\{4}\(-\d\d\)\{2}\s\d\{2}:\d\{2}\]/ end=/$/ contains=jrnlDate,jrnlTitle,jrnlTag

let s:hiDate = "highlight jrnlDate ctermfg=".s:date." cterm=bold"
let s:hiTitle = "highlight jrnlTitle ctermfg=".s:title." cterm=bold"
let s:hiTags = "highlight jrnlTag ctermfg=".s:tags." cterm=bold"

exec s:hiDate
exec s:hiTitle
exec s:hiTags