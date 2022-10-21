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

let g:jrnl_config = readfile(glob(g:jrnl_config_location))