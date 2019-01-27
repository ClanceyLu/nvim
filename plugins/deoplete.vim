call deoplete#custom#option({
      \ 'auto_complete_delay': 5,
      \ 'ignore_case': v:true,
      \ 'smart_case': v:true,
      \ 'camel_case': v:true,
      \ })

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
