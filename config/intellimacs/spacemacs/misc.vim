""" Key bindings that do not have <leader> as first key

" Go to next change
let g:WhichKeyDesc_Misc_GotoNextChange = "g, goto-next-change"
nnoremap g,    :action JumpToNextChange<CR>
vnoremap g,    :action JumpToNextChange<CR>

" Go to last change
let g:WhichKeyDesc_Misc_GotoLastChange = "g; goto-last-change"
nnoremap g;    :action JumpToLastChange<CR>
vnoremap g;    :action JumpToLastChange<CR>

" Go to declaration
let g:WhichKeyDesc_Misc_JumpToDefinition = "gd jump-to-definition"
nnoremap <leader>gd    :action GotoDeclaration<CR>
vnoremap <leader>gd    <Esc>:action GotoDeclaration<CR>

" Go to implementation
let g:WhichKeyDesc_Major_Goto_Implementation = "gi goto-implementation"
nnoremap gi    :action GotoImplementation<CR>
vnoremap gi    <Esc>:action GotoImplementation<CR>

" Go to supermethod
let g:WhichKeyDesc_Major_Goto_SuperMethod = "gI goto-superMethod"
nnoremap gI    :action GotoSuperMethod<CR>
vnoremap gI    <Esc>:action GotoSuperMethod<CR>


" Show Hover Info
let g:WhichKeyDesc_Major_Show_HoverInfo = "gh ShowHoverInfo"
nnoremap gh    :action ShowHoverInfo<CR>
vnoremap gh    <Esc>:action ShowHoverInfo<CR>
nnoremap K    :action ShowHoverInfo<CR>
vnoremap K    <Esc>:action ShowHoverInfo<CR>

" Collapse all folds
let g:WhichKeyDesc_Misc_CloseFolds = "zm close-folds"
nnoremap zm    :action CollapseAllRegions<CR>
vnoremap zm    :action CollapseAllRegions<CR>

" Open all folds
let g:WhichKeyDesc_Misc_OpenFolds = "zr open-folds"
nnoremap zr    :action ExpandAllRegions<CR>
vnoremap zr    :action ExpandAllRegions<CR>

" Jump to previously visited location
nnoremap <C-i>    :action Forward<CR>

" Jump to lately visited location
nnoremap <C-o>    :action Back<CR>

" Execute an action. Like <M-x>
nnoremap <A-X>    :action GotoAction<CR>
vnoremap <A-X>    :action GotoAction<CR>
inoremap <A-X>    <Esc>:action GotoAction<CR>
