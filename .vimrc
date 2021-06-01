"General Settings
syntax on "basic syntax
set relativenumber "shows line numbering relative to current line
set number
set ruler " Shows col and line num in bottom right
filetype plugin indent on
"set nowrap "word wrap off
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
"set signcolumn=number


let mapleader=" "

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

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"set filetypes
augroup filetypedetect
    au! BufRead,BufNewFile *.C setfiletype c
augroup END
