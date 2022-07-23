if exists('g:loaded_syntastic_csv_csvmodel_checker')
    finish
endif
let g:loaded_syntastic_csv_csvmodel_checker = 1

let s:save_cpo = &cpo
set cpo&vim

" if exists('g:syntastic_extra_filetypes')
"     call add(g:syntastic_extra_filetypes, 'csv')
" else
"     let g:syntastic_extra_filetypes = ['csv']
" endif


function! SyntaxCheckers_csv_csvmodel_GetLocList() dict
    let makeprg = self.makeprgBuild({})
    let errorformat = '%f\:%l\: %m'

    let env = syntastic#util#isRunningWindows() ? {} : { 'TERM': 'dumb' }

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat,
        \ 'env': env })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'csv',
    \ 'name': 'csvmodel' })

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
