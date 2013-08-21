syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set indentexpr=
set number
set ai
set foldmethod=syntax
set foldlevel=99  "open files un-folded

"for snippets plugin
:filetype plugin on
:filetype plugin indent on

"inline method completion
"autocmd FileType javascript, eruby set omnifunc=javascriptcomplete
"autocmd FileType html, eruby set omnifunc=htmlcomplete 
"autocmd FileType css, eruby set omnifunc=csscomplete 
"autocmd FileType xml, eruby set omnifunc=xmlcomplete
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.rb set filetype=ruby
au BufRead,BufNewFile *.html set filetype=html
au BufRead,BufNewFile *.haml set filetype=haml
au BufRead,BufNewFile *.haml setlocal foldmethod=indent
au BufRead,BufNewFile *.jade setlocal ft=jade

au Filetype scss setlocal fmr={,} fdm=marker

"for ragtag plugin
let g:ragtag_global_maps = 1

"for viewing the changes to an opened file
 command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

"write js file from .coffee file on change
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

"for comandt
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <Space> :CtrlP<cr>

command W w
command Q q
command Gs Gstatus
command Gc Gcommit
let mapleader = ","
map <leader>c :CoffeeCompile 10<CR>
vnoremap <silent> <leader>r :call RubyRangeRun()<CR>

map <leader>gv :CtrlP app/views<cr><f5>
map <leader>gc :CtrlP app/controllers<cr><f5>
map <leader>gm :CtrlP app/models<cr><f5>
map <leader>gh :CtrlP app/helpers<cr><f5>
map <leader>gl :CtrlP lib<cr><f5>
map <leader>gp :CtrlP public<cr><f5>
map <leader>gs :CtrlP app/assets/stylesheets<cr><f5>
map <leader>gj :CtrlP app/assets/javascripts<cr><f5>
map <S-h> gT
map <S-l> gt
 
colorscheme vividchalk

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

call pathogen#infect()

"for powerline
let &statusline='%<%f%{&mod?"[+]":""}%{fugitive#statusline()}%r%{&fenc !~ "^$\\|utf-8" || &bomb ? "[".&fenc.(&bomb?"-bom":"")."]" : ""}%=%15.(%l,%c%V %P%)'
set statusline+=
set nocompatible
set t_Co=256
set laststatus=2 " Always show the statusline

set shell=bash\ -i
