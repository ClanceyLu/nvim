nnoremap <silent> <Leader>pf :Denite file/rec<CR>
nnoremap <silent> <Leader>bf :Denite buffer<CR>
nnoremap <silent> <Leader>fb :Denite register -buffer-name=register<CR>
nnoremap <silent> <Leader>ps :Denite grep<CR>

call denite#custom#option('_', {
      \ 'prompt': '➜',
      \ 'winheight': 16,
      \ })

if executable('ag')
  call denite#custom#var('file/rec', 'command',
        \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'default_opts',
        \ ['-i', '--vimgrep', '--smart-case'])
  call denite#custom#var('grep', 'recursive_opt', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
endif

call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \ )

call denite#custom#map(
      \ 'insert',
      \ '<C-p>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \ )

call denite#custom#map(
      \ 'insert',
      \ 'jk',
      \ '<denite:enter_mode:normal>',
      \ 'noremap'
      \ )

call denite#custom#map(
      \ 'normal',
      \ 's',
      \ '<denite:do_action:vsplit>',
      \ 'noremap'
      \ )

call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ ['.git/', 'venv/', 'images/', 'img/', 'fonts/', 'node_modules/'])

let s:menus = {}

let s:menus.zsh = {
      \ 'description': 'Edit your import zsh configuration'
      \ }
