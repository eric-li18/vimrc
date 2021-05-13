"General Settings
syntax on "basic syntax
set relativenumber "shows line numbering relative to current line
set number
set ruler " Shows col and line num in bottom right
filetype plugin indent on
set nowrap "word wrap off
set noerrorbells "remove sounds from eol
set ch=2 " Command line is 2 high. Avoids 'enter to continue' messages.
set history=100 " Shows command history
set list listchars=tab:\ \ ,trail:·
set shortmess=a "set display information about files
set showcmd "Shows partial commands in the lower bar while typing
set laststatus=2 " Always show the status line
set updatetime=50
set ttimeoutlen=5
set incsearch "incremental search: shows results while searching
set smartcase "case-sensitive searching until a capital letter
set colorcolumn=100 "set a colored column for text
set mouse=a

"Tabbing and Indenting
set tabstop=4 "set existing tab to 4 columns wide
set softtabstop=4 "set tab presses to 4 columns wide
set shiftwidth=4 "when << or >> set it to 4 column width
set expandtab "set all tab char to spaces
set smartindent "vim will try to indent for you

"File Management
set nobackup "don't create backups of files
set noswapfile
set undodir=~/.vim/undodir
set undofile "have a file to undo changes

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25
set signcolumn=number

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-peekaboo'
Plug 'haya14busa/incsearch.vim'
Plug 'flazz/vim-colorschemes'

call plug#end()


if executable('rg')
        let g:rg_derive_root='true'
endif

"Monokai, blackboard, Tomorrow-Night-Eighties, PaperColor, CandyPaper,
"badwolf, brogrammer, bubblegum, buddy, bvemu, candyman, chalkboard, codedark,
"colorful, crayon, ego, 1989
colorscheme ego
set background=dark

let mapleader=" "

"CoC Remap: GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart
let g:echodoc_enable_at_startup = 1
let g:coc_global_extensions = [ 'coc-python', 'coc-json', 'coc-flutter', 'coc-tsserver', 'coc-yaml' ]
nnoremap <silent><leader>pl :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

"Misc Remap
nnoremap <leader>h <C-w>h<CR>
nnoremap <leader>j <C-w>j<CR>
nnoremap <leader>k <C-w>k<CR>
nnoremap <leader>l <C-w>l<CR>
nnoremap <leader>H <C-w>H<CR>
nnoremap <leader>J <C-w>J<CR>
nnoremap <leader>K <C-w>K<CR>
nnoremap <leader>L <C-w>L<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ps :Rg<Space>
nnoremap <leader>+ :vertical resize +15<CR>
nnoremap <leader>- :vertical resize -15<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 20<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"fzf Remap
nnoremap <leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gl :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>g` :Gpull<CR>
nmap <leader>g~ :Gpush<CR>

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" Incrementalsearch Remap
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
