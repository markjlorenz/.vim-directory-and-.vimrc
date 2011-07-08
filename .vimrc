syntax on
set tabstop=4
set number
set ai

"for snippets plugin
:filetype plugin on

"inline method completion
"autocmd FileType javascript, eruby set omnifunc=javascriptcomplete"CompleteJS
autocmd FileType html, eruby set omnifunc=htmlcomplete"CompleteTags
"autocmd FileType css, eruby set omnifunc=csscomplete"CompleteCSS
autocmd FileType xml, eruby set omnifunc=xmlcomplete"CompleteTags

"for ragtag plugin
let g:ragtag_global_maps = 1

"for shortcut to pg_active_schema directory
let $pga = './vendor/plugins/pg_active_schema'

"map space bar for a single charater insert
nmap <Space> i_<Esc>r"
"
"for viewing the changes to an opened file
 command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

"map copy as expected
 vmap <C-x> :!pbcopy<CR> 
 vmap <C-c> :w !pbcopy<CR><CR>
