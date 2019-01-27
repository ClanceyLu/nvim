set t_Co=256
set background=dark
try
  colorscheme gruvbox
  " colorscheme pink-moon
  set transparency=10
catch
endtry

if has('gui_running')
  set guifont=Hack:h14
  set guioptions-=L
  set guioptions-=r
  set guioptions-=T
  set guioptions-=m
  set guioptions=
endif
