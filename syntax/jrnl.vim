" inherit from markdown
setlocal syntax=markdown

syntax match jrnlDate /\[.\{-}\]/ 
syntax match jrnlTitle /\s.\{-}\ze\s/ contained contains=jrnlTag
syntax match jrnlTag /@.\{-}\w\+/
syntax region jrnlHeader start=/^\[\d\{4}\(-\d\d\)\{2}\s\d\{2}:\d\{2}\]/ end=/$/ contains=jrnlDate,jrnlTitle,jrnlTag

highlight jrnlDate ctermfg=blue cterm=bold
highlight jrnlTitle ctermfg=magenta cterm=bold
highlight jrnlTag ctermfg=red cterm=bold