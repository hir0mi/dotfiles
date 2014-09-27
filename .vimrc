set number
set tabstop=4
set showmode
set title
set ruler
set showcmd
set showmatch
set laststatus=2
set cursorline

set smartindent
set ts=4 sw=4 sts=0

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
autocmd FileType go autocmd BufWritePre <buffer> Fmt


exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

let g:syntastic_go_checkers = ['go', 'golint']

if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.go = '\h\w*\.\?'
