# vim-jrnl

file detection and syntax highlighting for .jrnl files


## usage

just set the location of your jrnl's yaml config in your `.vimrc`:

```vimscript
let g:jrnl_config_location = '~/.config/jrnl/jrnl.yaml'
```  


### todo

- ~~get color scheme from jrnl.yaml~~
- more robust syntax highlighting
    - title isn't highlighted when no date is present
    - body isn't highlighted currently
- testing testing testing