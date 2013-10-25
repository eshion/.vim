if !exists('g:AutoComplPop_Behavior')
    let g:AutoComplPop_Behavior = {}
    let g:AutoComplPop_Behavior['php'] = []
    call add(g:AutoComplPop_Behavior['php'], {
                \ 'command' : "\<C-x>\<C-o>",
                \ 'pattern' : printf('\(->\|::\|\$\)\k\{%d,}$', 0),
                \ 'repeat' : 0,
                \})
endif
