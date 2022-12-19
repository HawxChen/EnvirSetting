set incsearch
set hlsearch
set nocompatible
"set shiftwidth=4
"set softtabstop=4
set tabstop=8
set softtabstop=4
set shiftwidth=4
set backspace=2
set expandtab
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set backspace=2
set wrap
"set nowrap
"set list

set ru
set cursorline
set background=dark
set number
set ruler
set noeb vb t_vb=
syn on
set cindent
colorscheme torte
autocmd BufWritePre * :%s/\s\+$//e
autocmd Filetype make setlocal noexpandtab
autocmd Filetype Make setlocal noexpandtab


au BufNewFile,BufRead *.\(vim\)\@! inoremap " ""<esc>:let leavechar='"'<cr>i
au BufNewFile,BufRead *.\(txt\)\@! inoremap ' ''<esc>:let leavechar="'"<cr>i
imap <m-l> <esc>:exec "normal f" . leavechar<cr>a
imap <d-l> <esc>:exec "normal f" . leavechar<cr>
" Indent Python in the Google way.
filetype indent on
if filereadable(expand("~/.vim/bundle/.vimrc.Plugins"))
      source ~/.vim/bundle/.vimrc.Plugins
endif

" Plugin sessions
colorscheme monokai
syntax on
set t_Co=256 
set bg=light
set bg=dark
if !has("python") && !has("python3")
    let g:leaderf_loaded = 1
endif
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
