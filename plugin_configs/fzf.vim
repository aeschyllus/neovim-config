" Requires silversearcher-ag
" Used to ignore .gitignore files
let $FZF_DEFAULT_COMMAND = 'ag --hidden -g ""'
"let $FZF_DEFAULT_COMMAND = ""

" shortcuts when opening a file from file search
let g:fzf_action = {'ctrl-t': 'tab split', 'ctrl-s': 'split', 'ctrl-v': 'vsplit'}

" Open file search
nnoremap <C-p> :FZF<CR>

" press enter to select option for suggestions
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
