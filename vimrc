"General Settings
syntax on "basic syntax
set ruler " Shows col and line num in bottom right
set nowrap "word wrap off
set noerrorbells "remove sounds from eol
set nu "line numbering
set ch=2 " Command line is 2 high. Avoids 'enter to continue' messages.
set history=100 " Shows command history
set list listchars=tab:\ \ ,trail:·
set shortmess=a " Command line is 2 high. Avoids 'enter to continue' messages.
set showcmd "Shows partial commands in the lower bar while typing
set laststatus=2 " Always show the status line
set updatetime=50
set ttimeoutlen=5

"Tabbing and Indenting
set tabstop=4 "set existing tab to 4 columns wide
set softtabstop=4 "set tab presses to 4 columns wide
set shiftwidth=4 "when << or >> set it to 4 column width
set expandtab "set all tab char to spaces
set smartindent "vim will try to indent for you

"File Management
set noswapfile "no .swp file
set nobackup "don't create backups of files
set undodir=~/.vim/undodir
set undofile "have a file to undo changes

set incsearch "incremental search: shows results while searching
set smartcase "case-sensitive searching until a capital letter
set colorcolumn=80 "set a colored column for text

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

call plug#end()


if executable('rg')
        let g:rg_derive_root='true'
endif

colorscheme gruvbox
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
let g:coc_global_extensions = [ 'coc-python', 'coc-json' ]


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
nnoremap hh <nop>
nnoremap jj <nop>
nnoremap kk <nop>
nnoremap ll <nop>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 20<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"fzf Remap
nnoremap <leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>

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

"Autocommands
filetype plugin indent on

"Toggles whether relativenumbering or not depending on mode and focus
set relativenumber "shows line numbering relative to current line
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
