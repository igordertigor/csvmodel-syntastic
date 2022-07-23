au BufRead,BufNewFile *.csv setfiletype csv

if exists('g:syntastic_extra_filetypes')
    call add(g:syntastic_extra_filetypes, 'csv')
else
    let g:syntastic_extra_filetypes = ['csv']
endif
