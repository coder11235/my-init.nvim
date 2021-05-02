set nocompatible
filetype off
set encoding=UTF-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim', {'branch':'release'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'frazrepo/vim-rainbow'
"Plugin 'vim-syntastic/syntastic'
Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'gosukiwi/vim-atom-dark'
"Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on
syntax on
set number
let g:airline#extensions#tabline#enabled = 1

nnoremap <C-e> :bn<CR>

inoremap <C-S> <Esc>:update<cr>gii
nnoremap <C-S-n> :NERDTreeToggle<CR>
nnoremap <C-S-x> :qa!<CR>
let g:rainbow_active = 1
colorscheme OceanicNext
autocmd VimEnter * NERDTree | wincmd p
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag}
"set statusline+=%*

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction


"let g:syntastic_enable_signs=1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
