" no compatibility to vi {{{
if &compatible
    set nocompatible
endif
" }}}

source ~/.config/nvim/basic.vim

" setup dein {{{
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim
call dein#begin('~/.cache/dein')
call dein#load_toml("~/.config/nvim/plugins.toml", {})
call dein#end()
" }}}

source ~/.config/nvim/mapping.vim
source ~/.config/nvim/gui.vim
