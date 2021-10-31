set laststatus=2 " Display status line
set smartcase
set noshowmode " Display Insert status
set number relativenumber " Display line number
set ai " Auto indent
set cursorline " Display cursor line
set tabstop=4 " Tab size
set shiftwidth=4 " Indent size
set softtabstop=4
set mouse=a
set ruler " Status of the currrent cursor
set history=100
set expandtab " Tab to space
set timeoutlen=1000 " 1/1000 sec
set ttimeoutlen=40 "1/1000 sec
set nowrap "no wrap automatically
set hlsearch "Enable Highlight Search
set incsearch "Highlight while search
filetype indent on " Auto indent depend filetype 

" GVim font
set guifont=hack\ 14

" Auto complete
inoremap <leader>; <C-o>A;
inoremap <leader>{{ <Esc>A{<Cr>}<C-o>O
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap [] []<Left>
inoremap <> <><Left>
inoremap {{ {<Cr><Cr>}<Up>
inoremap {} {}<Left>
inoremap <C-c> <Esc>

" Lightline 
let g:lightline = {
      \ 'colorscheme':'wombat',
\ }

" Clever-f
let g:clever_f_smart_case = 1
let g:clever_f_mark_direct = 1


" indentLine:
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" Plugin
call plug#begin()
" Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" React Highlight
    Plug 'mxw/vim-jsx'

" JavaScript
    Plug 'pangloss/vim-javascript'

    Plug 'preservim/tagbar'

" Better f key
    Plug 'rhysd/clever-f.vim'

" status bar
    Plug 'itchyny/lightline.vim'

    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Veritcal indent line
    Plug 'Yggdroot/indentLine'

    Plug 'ap/vim-css-color'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround' 

" git
    Plug 'tpope/vim-fugitive'

" Theme
    Plug 'jacoborus/tender.vim'
" fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

syntax on " Syntax highlight
set background=dark " Backgournd

" Color
" set t_Co=256
" if (has("termguicolors"))
"   set termguicolors
" endif

" Different Indent Size
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Theme
colo tender

" CoC
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" ctags
set tags=./tags,./TAGS,tags;~,TAGS;~
nmap <F7> :TagbarToggle<CR>

" cscope
set cscopetag
set csto=0

if filereadable("cscope.out")
   cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" NERDTree
nmap <F8> :NERDTreeToggle<CR>
