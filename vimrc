" =====================================
" Vim Plug
" =====================================
"
call plug#begin('~/.vim/plugged')
"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Nerdtree
  Plug 'scrooloose/nerdtree'
" Easy Motion
  Plug 'easymotion/vim-easymotion'
" Indentation Guide
  Plug 'Yggdroot/indentLine'
" Fuzzy File Finder
  Plug 'ctrlpvim/ctrlp.vim'
" Colorscheme pack
  " Plug 'noah/vim256-color'
  " Plug 'tyrannicaltoucan/vim-quantum'
  Plug 'LS8/vim-quantum'
" Commentary (toggle comments with gcc)
  Plug 'tpope/vim-commentary'
" Lightline (statusline/tabline)
  Plug 'itchyny/lightline.vim'
" CSS3 Syntax Support
  Plug 'hail2u/vim-css3-syntax'
" L9 Library (Dependency for Autocomplpop)
  " Plug 'eparreno/vim-l9'
" Auto pop up completion suggestions
  " Plug 'othree/vim-autocomplpop'
" DelimitMate (Auto-completion for quotes, parens, brackets etc.)
  Plug 'Raimondi/delimitMate'
" Vim Snippets
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'tomtom/tlib_vim'
  " Plug 'garbas/vim-snipmate'
  " Plug 'honza/vim-snippets'
" Better Indentation for JS and Syntax Highlighting  
  Plug 'pangloss/vim-javascript'
" JS Syntax Highlighting
  Plug 'jelera/vim-javascript-syntax'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'othree/yajs.vim'
" New Omnicomplete Function for JavaScript
  Plug '1995eaton/vim-better-javascript-completion'
" Parameter Complete for JS
  Plug 'othree/jspc.vim'
" Cycle through Yanks with Meta+p
  Plug 'maxbrunsfeld/vim-yankstack'
" Pug Syntax
  Plug 'digitaltoad/vim-pug'
" Nerdfonts
  Plug 'ryanoasis/vim-devicons'
" JSX
  Plug 'mxw/vim-jsx'
" Typescript
  Plug 'leafgarland/typescript-vim'

call plug#end()
" =====================================
" End Vim Plug
" =====================================

" =====================================
" General
" =====================================
  " Keybindings
    let mapleader = "\<Space>" 
  " Save File
    nnoremap <Leader>w :w<CR>
    nnoremap <Leader>fs :w<CR>
  " Alias Q as q to quit file
    :command Q q
    nnoremap <Leader>q :q<CR>

  " Alternate buffers / windows
    nnoremap <Leader><Tab> <C-^>
    nnoremap <Leader>wk <C-W>k
    nnoremap <Leader>wl <C-W>l
    nnoremap <Leader>wj <C-W>j
    nnoremap <Leader>wh <C-W>h

  " Open terminal at the bottom
    nnoremap <leader><CR> :below 5sp term://$SHELL<cr>i

  " Fuzzy File Finder (Ctrl P)
    nnoremap <Leader>pf :CtrlP<CR>
    nnoremap <Leader>bb :CtrlPBuffer<CR>
  " Find file in current folder (folder of the currently opened file)
    nnoremap <Leader>ff :e <C-R>=expand('%:p:h') . '/'<CR>
  " Cycle Suggestions
    inoremap <expr> <C-J> ((pumvisible())?("\<C-n>"):("J"))
    inoremap <expr> <C-K> ((pumvisible())?("\<C-p>"):("K"))

  " Show relative line numbers
    set relativenumber

  " Auto-indent new lines
    set autoindent
  " Tabs And Space Setting
    set expandtab
    set shiftwidth=2
    set smartindent 
    set smarttab
    set softtabstop=2

  " Search Setting
    set hlsearch
    set smartcase
    set ignorecase
    set incsearch

" =====================================
" End General
" =====================================

" =====================================
" Plug in settings & customization
" =====================================
"
" Omnicomplete
" =====================================
  filetype plugin on
  set omnifunc=syntaxcomplete#Complete

" Lightline
" =====================================
  function! LightLineFilename()
    return expand('%')
  endfunction

  " get rid of default vim mode information
  set noshowmode

  set laststatus=2
  if !has('gui_running')
      set t_Co=256
    endif

  let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
  " let g:lightline = {
  "     \ 'colorscheme': 'wombat',
  "     \ 'component': {
  "     \   'readonly': '%{&readonly?"":""}',
  "     \ },
  "     \ 'separator': { 'left': '', 'right': '' },
  "     \ 'subseparator': { 'left': '', 'right': '' }
  "     \ }

  " Match statusline bg with terminal bg
  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle


" Colorscheme Settings
" =====================================
  set background=dark
  colorscheme quantum
  hi Normal ctermbg=none
  let g:quantum_italics = 1
  let g:quantum_black = 1

" Other
" =====================================
  " let g:ctrlp_prompt_mappings = {
  "   \ 'AcceptSelection("e")': ['<c-t>'],
  "   \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
  "   \ }
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }
  " Open files
  " map <Leader>e :edit <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
  " map <Leader>t :tabedit <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
  " map <Leader>s :sp <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
  " map <Leader>v :vsp <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
  " Tab Navigation
  " nnoremap <Leader>h  :tabfirst<CR>
  " nnoremap <Leader>j  :tabnext<CR>
  " nnoremap <Leader>k  :tabprev<CR>
  " nnoremap <Leader>l  :tablast<CR>
  " nnoremap <Leader>x  :q<CR>
  " nnoremap <Leader>q  :q<CR>
  " nnoremap <Leader>o  <C-W>w

  " AutoExpand brackets and alike (delimitMate)
  let delimitMate_expand_cr = 1

  " Set timeout to avoid delay on e.g 'O'
  :set timeout timeoutlen=3000 ttimeoutlen=100

  " Deactivate auto commention if opening new line from commented line
  autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

  " Cycle through Yanks with Meta+(shift)+p
  " nmap <leader>p <Plug>yankstack_substitute_older_paste
  " nmap <leader>P <Plug>yankstack_substitute_newer_paste
" =====================================
" End Plug in settings & customization
" =====================================



" =====================================
" Experimental
" =====================================
  set number
  let g:indentLine_color_term = 239
  map <F7> :NERDTreeToggle<CR>
  map <leader>ft :NERDTreeToggle<CR>
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
  let NERDTreeMapOpenVSplit = 'v'
  let NERDTreeMapOpenSplit = 's'
  " enable line numbers
  let NERDTreeShowLineNumbers=1
  " make sure relative line numbers are used
  autocmd FileType nerdtree setlocal relativenumber

  " map <Leader>ts :split term://zsh<CR>
  " map <Leader>tv :vsplit term://zsh<CR>
  " map <Leader>tt :tabedit term://zsh<CR>
  tnoremap <Esc> <C-\><C-n>

  let g:vim_json_syntax_conceal = 0
  set conceallevel=0
  autocmd FileType json let g:indentLine_setConceal = 0

  " colorscheme railscasts colorscheme mango colorscheme flatcolor colorscheme last256 hi MatchParen cterm=bold ctermbg=none  ctermfg=magenta highlight LineNr ctermfg=238 highlight Statement ctermfg=032 hi jsFuncCall ctermfg=031 hi jsFuncName ctermfg=158 hi jsFuncBlock ctermfg=015 hi jsOperator ctermfg=015 hi jsGlobalObjects ctermfg=175 hi jsFuncCall            guifg=NONE   guibg=203   gui=BOLD
" leader+sp to find term for color changing
" nmap <leader>sp :call <SID>SynStack()<CR>
" function! <SID>SynStack()
"   if !exists("*synstack")
"     return
"   endif
"   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc
" =====================================
" End Experimental
" =====================================


" =====================================
" Nerdtree Icons
" =====================================
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')


autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#enable_smart_case = 1
set completeopt=longest,menuone,preview
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
" autocmd CompleteDone * pclose
" disable tern preview
set completeopt-=preview
" let g:deoplete#omni_patterns = {}
" let g:deoplete#omni_patterns.html = ''
" let g:jsx_ext_required = 0
set mouse=a
