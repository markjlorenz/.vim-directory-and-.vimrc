syntax on
set tabstop=4
set number
set ai

"for snippets plugin
:filetype plugin on

"inline method completion
autocmd FileType javascript, eruby set omnifunc=javascriptcomplete"CompleteJS
autocmd FileType html, eruby set omnifunc=htmlcomplete"CompleteTags
autocmd FileType css, eruby set omnifunc=csscomplete"CompleteCSS
autocmd FileType xml, eruby set omnifunc=xmlcomplete"CompleteTags

"for ragtag plugin
let g:ragtag_global_maps = 1
