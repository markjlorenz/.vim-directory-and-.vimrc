syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set indentexpr=
set number
set ai

"for snippets plugin
:filetype plugin on
:filetype plugin indent on

"
"inline method completion
"autocmd FileType javascript, eruby set omnifunc=javascriptcomplete
"autocmd FileType html, eruby set omnifunc=htmlcomplete 
"autocmd FileType css, eruby set omnifunc=csscomplete 
"autocmd FileType xml, eruby set omnifunc=xmlcomplete
autocmd BufRead,BufNewFile *.jade setlocal ft=jade


"for ragtag plugin
let g:ragtag_global_maps = 1

"for shortcut to pg_active_schema directory
let $pga = './vendor/plugins/pg_active_schema'
"
"for viewing the changes to an opened file
 command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

"generate the ctags when a file is saved 
au BufWritePost *.rb,*.erb,*.js,*.jade,*.haml silent! !ctags -w -R --exclude=.git --exclude=log --exclude=vendor --exclude=node_modules --exclude=public/lib* --exclude=.DS_Store &

"write js file from .coffee file on change
au BufWritePost public/javascripts/*.coffee silent CoffeeMake! -b | cwindow | redraw!
au BufWritePost app.coffee silent CoffeeMake! -b | cwindow | redraw!

"for comandt
let g:CommandTMatchWindowAtTop = 1
map <Space> :CommandT<cr>
map <silent> <Leader>t :CommandTFlush<CR>

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

call pathogen#infect()

 "for powerline
 set nocompatible
 set t_Co=256
 set laststatus=2 " Always show the statusline
