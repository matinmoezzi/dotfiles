set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Autocomplete plugin
Plugin 'Townk/vim-autoclose'

" UltiSnips Plugin
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

" NerdTree Plugin - tree explorer
Plugin 'scrooloose/nerdtree'

" NerdTree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" File Path Finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Startify Plugin
Plugin 'mhinz/vim-startify'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Surround Vim
Plugin 'tpope/vim-surround'

"vim lsp highlighting
Plugin 'jackguo380/vim-lsp-cxx-highlight'

" Syntastic Plugin
Plugin 'scrooloose/syntastic'

" Omnisharp plugin
Plugin 'OmniSharp/omnisharp-vim'

" airline plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" repeat plugin
Plugin 'tpope/vim-repeat'

" vim devicon
Plugin 'ryanoasis/vim-devicons'

" nerd syntax highlighting
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" onedark theme plugin
Plugin 'joshdick/onedark.vim'

" lightline plugin
"Plugin 'itchyny/lightline.vim'
"Bundle 'daviesjamie/vim-base16-lightline'

" base16 themes
Plugin 'chriskempson/base16-vim'

" YouCompleteMe plugin
"Plugin 'ycm-core/YouCompleteMe'

" Coc plugin
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Set timeout length
set tm=200

" Enable line number
set number

" No show mode
set noshowmode

" Set to auto read when a file is changed from the outside
set autoread

" Turn on the Wild menu
set wildmenu

" Explicitly tell vim that the terminal supports 256 colors
set t_Co=256
 
" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

set autoindent " automatically set indent of new line
set hidden

" Show matching brackets when text indicator is over them
set showmatch

" Tab control
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
    
" lightline configuraion
"let g:lightline = {'colorscheme': 'base16' }

set background=dark

" Enable filetype plugins
filetype plugin on
filetype indent on

" Allow use mouse in all mode
if has('mouse')
        set mouse=a
    endif

" Always show the status line
set laststatus=2
set shortmess=F

" Open a NERDTree automatically when vim starts up if no files were specified
"autocmd VimEnter * if 0 == argc() | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Map ,n to NerdTreeToggle
map <leader>n :NERDTreeToggle<CR>

" Map ,f to FZF
map <leader>f :FZF<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

" Remember info about open buffers on close
"set viminfo^=%

" Map windows manipulating
nmap mm <C-w>w
nmap ms <C-w>s
nmap mv <C-w>v
nmap mj <C-w>j
nmap mk <C-w>k
nmap ml <C-w>l
nmap mh <C-w>h
nmap mc <C-w>c
nmap mcc <C-w>o

" Map next and prev completion
map ee $
map ss 0
" Map tab manipulating
nmap <silent>nn :tabn<CR>
nmap <silent>nt :tabe<CR>
nmap <silent>nc :tabc<CR>
nmap <silent>no :tabo<CR>


" Map ,, to save
nmap <leader>, :w<CR>

" Map ,q to :q!
nnoremap <leader>q :q!<CR>

" Map ,. to Esc
inoremap <leader>. <esc>
vnoremap <leader>. <esc>
nnoremap <leader>. <esc>

" buffer management
nnoremap <silent> ;; :bnext<CR>
nnoremap <silent> '' :bprevious<CR>
nnoremap <silent> ;' :bd<CR>

" Apply Macros with ,e
nnoremap <leader>e @q
vnoremap <leader>e :norm @q<cr>

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" airline configurarion
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_vim'
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_airline_statusline = 1

" Startify configuration

    let g:ascii = [
          \ '        __',
          \ '.--.--.|__|.--------.',
          \ '|  |  ||  ||        |',
          \ ' \___/ |__||__|__|__|',
          \ ''
          \]
let g:startify_custom_header = g:ascii
	
" devicons configuration
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" NERDTree configuration

" Highlight full name
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1

" base16_shell vim configuration
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
else
  colorscheme default
endif

"Coc Configuration

"Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
   \ pumvisible() ? "\<C-n>" :
   \ <SID>check_back_space() ? "\<TAB>" :
   \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `Ctrl + f` to format current buffer
nnoremap <silent><c-f> :call CocAction('format')<CR>
inoremap <silent><c-f> :call CocAction('format')<CR>
vnoremap <silent><c-f> :call CocAction('format')<CR>

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for rename current word
nmap <leader>rr <Plug>(coc-rename)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Omnisharp configuration
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 2
