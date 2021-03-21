let mapleader=" "

nnoremap J 5j
nnoremap K 5k
nnoremap H ^
nnoremap L $

nnoremap W 5w
nnoremap B 5b
nnoremap dL d$

nnoremap Q :q<CR>
nnoremap S :w<CR>
nnoremap R :source $MYVIMRC<CR>


nnoremap <C-j> :set splitbelow<CR>:sp<CR>
nnoremap <C-k> :set nosplitbelow<CR>:sp<CR>
nnoremap <C-h> :set nosplitright<CR>:vsp<CR>
nnoremap <C-l> :set splitright<CR>:vsp<CR>

nnoremap <up> :res +5<CR>
nnoremap <down> :res -5<CR>
nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>

nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>/ :nohlsearch<CR>


" Place the two screens up and down
nnoremap sh <C-w>t<C-w>K
" Place the two screens side by side
nnoremap sv <C-w>t<C-w>H


" ===
" === Tab management
" ===
" Create a new tab with tu
nnoremap tu :tabe<CR>
" Move around tabs with tn and ti
nnoremap th :-tabnext<CR>
nnoremap tl :+tabnext<CR>
" Move the tabs with tmn and tmi
nnoremap tmh :-tabmove<CR>
nnoremap tml :+tabmove<CR>


inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-j> <down>
inoremap <C-k> <up>

inoremap <C-x> <C-x>s
inoremap <C-v> <Esc>"+p

vnoremap H ^
vnoremap L $
vnoremap J 5j
vnoremap K 5k
vnoremap d "+d

map <LEADER>sc :set spell!<CR>
map <LEADER>rc :e $MYVIMRC<CR>



" ===
" === Other useful stuff
" ===" Opening a terminal window
noremap <LEADER>t :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER>n <Esc>/<++><CR>:nohlsearch<CR>c4l




" ===
" === Editor behavior
" ===
"

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
syntax on
let &t_ut=''
set autochdir
set encoding=utf-8
set guifont="JetBrains Mono":h14
set exrc
set secure
set clipboard=unnamed
set number
"set spell
set relativenumber
set cursorline
set hidden
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=5
set ttimeoutlen=0
set notimeout
"set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
"set colorcolumn=100
set updatetime=100
set virtualedit=block

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajmwagar/vim-deus'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'
Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sainnhe/sonokai'
call plug#end()

" ===
" === Theme
" ===
set t_Co=256
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
"colorscheme deus
"colorscheme dracula
let g:sonokai_style="maia"
let g:sonokai_cursor = 'green'
let g:sonokai_transparent_background = 1
let g:sonokai_better_performance = 1
colorscheme sonokai
"let g:deus_termcolors=256
hi Normal ctermfg=252 ctermbg=none
highlight Normal guibg=NONE ctermbg=None

" ===
" === Airline
" ===
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='deus'
let g:airline_theme='dracula'


" ===
" === Rainbow
" ===
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['#FFE66F', '#00FFFF', '#46A3FF', '#AAAAFF', '#FFB5B5'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\}



" ===
" === EasyMotion
" ===
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-overwin-f)


" ===
" === auto-pairs
" ===
let g:AutoPairsMapCh=0
let g:AutoPairsMapCR=0

" ===
" === lazygit.nvim
" ===
noremap <c-g> :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support


" ===
" === coc.nvm
" ===
"
let g:coc_global_extensions = [
    \ 'coc-translator',
    \ 'coc-yank',
    \ 'coc-syntax',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-explorer',
    \ 'coc-json',
    \ 'coc-vimlsp']
set updatetime=100
set shortmess+=c
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <C-s> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>
nmap ts <Plug>(coc-translator-p)

"nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')


" ===
" === ultisnips
" ===
"
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-q>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/']

