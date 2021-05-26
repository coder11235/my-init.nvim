set nocompatible

set nobackup
set nowritebackup

set cmdheight=2


filetype off
set tabstop=1
set termguicolors
set encoding=UTF-8
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim', {'branch':'release'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'ap/vim-css-color'
Plugin 'voldikss/vim-floaterm'
Plugin 'turbio/bracey.vim'
Plugin 'mhinz/vim-crates'
Plugin 'junegunn/fzf.vim'
Plugin 'arzg/vim-colors-xcode'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()
filetype plugin indent on
set number
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-e> :bn<CR>
"nnoremap <C-S> :update<CR>
inoremap <C-S> <Esc>:update<cr>gi
nnoremap <F10> :NERDTreeToggle<CR>
nnoremap <C-S-x> :qa!<CR>
nnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>

let g:user_emmet_leader_key=','
let g:rainbow_active = 1
colorscheme xcodedarkhc
autocmd VimEnter * NERDTree | wincmd p
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
syntax on
