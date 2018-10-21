if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Plug 'othree/yajs.vim'
" Plug 'posva/vim-vue'
Plug 'mhinz/vim-startify'
Plug 'jreybert/vimagit'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jspc.vim'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'terryma/vim-smooth-scroll'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'LS8/vim-quantum'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'Raimondi/delimitMate'
Plug 'Quramy/tsuquyomi', {'do': 'gmake'}
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'fatih/vim-go'
" Plug 'w0rp/ale'
" Vim Snippets
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
call plug#end()
" =====================================
" General
" =====================================
set relativenumber
set hidden
set autoindent
set expandtab
set shiftwidth=2
set smartindent 
set smarttab
set background=dark
set softtabstop=2
set smartcase
set ignorecase
set incsearch
set noshowmode
set laststatus=2
set number
set mouse=a
set scrolloff=5
set re=1
set lazyredraw
if !has('gui_running')
  set t_Co=256
endif
" set hlsearch
set nohlsearch

" source ~/.vim/mappings.vim

let mapleader = "\<Space>" 
nnoremap <Leader>fs :w<CR>
:command Q q
nnoremap <Leader>Q :q<CR>
nnoremap <Leader>x :q!<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>bd :bp<bar>sp<bar>bn<bar>bd<CR> 
nnoremap <Leader>bD :%bd<CR><C-^>:bd#<CR>
nnoremap <Leader><CR> <Esc>A;<Esc>^
nnoremap \\ :set hlsearch!<return>
nnoremap <Leader>fl :vsp <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader><Tab> <C-^>
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wK <C-W>K
nnoremap <Leader>wL <C-W>L
nnoremap <Leader>wJ <C-W>J
nnoremap <Leader>wH <C-W>H
nnoremap <Leader>wm :call MaximizeToggle()<CR>
nnoremap <Leader>ww <C-W>p
nnoremap <Leader>wd <C-W>q
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>' :below 5sp term://$SHELL<cr>i
nnoremap <Leader>tt :tabedit term://$SHELL<cr>:vsplit term://$SHELL<cr>:split term://$SHELL<cr>
" nnoremap <Leader>tt :!termite &\|<CR>
" inoremap <expr> <C-J> ((pumvisible())?("\<C-n>"):("J"))
" inoremap <expr> <C-K> ((pumvisible())?("\<C-p>"):("K"))

nnoremap <Leader>gs :Magit<CR>
nnoremap <Leader>pp :CtrlP<CR>
nnoremap <Leader>pf :CtrlP<CR>
nnoremap <Leader>bb :CtrlPBuffer<CR>
nnoremap <Leader>bf :CtrlPBuffer<<CR>
nnoremap <Leader>ff gg=G<C-o><C-o>
nnoremap <Left> gT
nnoremap <Right> gt
map <leader>ft :NERDTreeToggle<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 1)<CR>
nnoremap <Leader>ss :SSave<CR>
nnoremap <Leader>sl :SLoad<CR>
" nmap <silent> <Leader>ep <Plug>(ale_previous_wrap)
" nmap <silent> <Leader>en <Plug>(ale_next_wrap)

" End General
" =====================================


" Plug in settings & customization
" =====================================
" let g:ale_javascript_eslint_use_global = 1
" let g:ale_lint_on_text_changed = 'never'
" let g:ctrlp_working_path_mode = 'ra'

" Omnicomplete
" ============
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType javascript setlocal omnifunc=tern#Complete 
" au FileType javascript,jsx,javascript.jsx setl omnifunc=tern#Complete
set completeopt=longest,menuone,preview
set completeopt-=preview

" Lightline
" ============
function! LightLineFilename()
  return expand('%')
endfunction
" Gruvy \ 'colorscheme': 'seoul256',
" Archy \ 'colorscheme': 'dracula',
" dracula was removed https://github.com/itchyny/lightline.vim/commit/e54d2ae512c9c081bfff9303cb22ffa94ed48ba3 
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \   'window': '%{winnr()}'
      \ },
      \ 'active': {
      \   'left': [ ['mode', 'paste'], ['window', 'filename', 'modified']]
      \ },
      \ 'inactive': {
      \   'left': [['window', 'filename','modified']]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle

" Nerdtree
" ============
" start nerdtree when no file is specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMapOpenVSplit = 'v'
let NERDTreeMapOpenSplit = 's'
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" Theme
" ============
" ARCHY
colorscheme quantum
let g:quantum_italics=1
" let g:quantum_black = 1
" Gruvy
" let g:gruvbox_italic=1
" colorscheme gruvbox

hi Normal ctermbg=none
highlight Comment cterm=italic

" Other
" ============
let g:startify_list_order = [
      \ ['   My most recently used files in the current directory:'],
      \ 'dir',
      \ ['   These are my bookmarks:'],
      \ 'bookmarks',
      \ ['   My most recently used files:'],
      \ 'files',
      \ ['   These are my sessions:'],
      \ 'sessions',
      \ ['   These are my commands:'],
      \ 'commands',
      \ ]
let g:startify_bookmarks = [ {'v': '~/.vim/vimrc'}, {'t': '~/.config/termite/config'}, {'i': '~/.config/i3/config'} ]
let g:startify_files_number = 5
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
      \ 'file': '\.so$\|\.dat$|\.DS_Store$'
      \ }
let delimitMate_expand_cr = 1
:set timeout timeoutlen=3000 ttimeoutlen=100
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

" End Plug in settings & customization
" =====================================

" Experimental
" =====================================
let g:indentLine_color_term = 239
let g:indentLine_char = '│'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar = '.'
tnoremap <Esc> <C-\><C-n>
let g:vim_json_syntax_conceal = 0
set conceallevel=0
let g:indentLine_fileTypeExclude = ['markdown']
autocmd FileType json let g:indentLine_setConceal = 0
autocmd BufRead,BufNewFile *.vue setlocal filetype=html
let g:jsx_ext_required = 0
map  <Leader>fc <Plug>(easymotion-f)
map  <Leader>Fc <Plug>(easymotion-F)

nnoremap <Leader>1 :1wincmd w<CR>
nnoremap <Leader>2 :2wincmd w<CR>
nnoremap <Leader>3 :3wincmd w<CR>
nnoremap <Leader>4 :4wincmd w<CR>
nnoremap <Leader>5 :5wincmd w<CR>
nnoremap <Leader>6 :6wincmd w<CR>
nnoremap <Leader>7 :7wincmd w<CR>
nnoremap <Leader>8 :8wincmd w<CR>
nnoremap <Leader>9 :9wincmd w<CR>

nnoremap <silent> <s-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <s-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" autocmd BufRead,BufNewFile *.vue setlocal filetype=html.javascript.css

" leader+sp to find term for color changing
" nmap <leader>sp :call <SID>SynStack()<CR>
" function! <SID>SynStack()
"   if !exists("*synstack")
"     return
"   endif
"   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc

" End Experimental
" =====================================
