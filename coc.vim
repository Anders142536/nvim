" confirms selection in completion list
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" navigate completion list with tab
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
