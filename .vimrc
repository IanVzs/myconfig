set encoding=utf-8
set hlsearch

"缩进&&格式
set tabstop=4
" set expandtab
set autoindent
set smartindent

"显示行数
set number

" 代码颜色区分
syntax enable
syntax on

" 代码提示
imap <C-b> <C-x><C-o>

" golang
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/vim-goimports'
call plug#end()
let g:go_version_warning = 0
let g:go_gopls_enabled = 0
let g:goimports_simplify = 1
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=prc

" ------------vim----配置完毕---------------
