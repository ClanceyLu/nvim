let g:lightline = {
      \ 'component': {
      \   'lineinfo': '⭡ %3l:%-2v',
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'fugitive': 'LightlineFugitive',
      \   'searchStatus': 'LightlineSearchStatus'
      \ },
      \ }
let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'fugitive', 'filename', 'modified', 'searchStatus' ] ],
      \ }

function! LightlineReadonly()
  return &readonly ? '⭤' : ''
endfunction

function! LightlineSearchStatus()
  return anzu#search_status()
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? '⭠ '.branch : ''
  endif
  return ''
endfunction
