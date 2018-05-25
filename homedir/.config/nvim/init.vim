if &compatible
  set nocompatible
endif

"""""""""""""""""""
" dein
"""""""""""""""""""
set runtimepath^=~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.local/share/nvim/dein')
  call dein#begin('~/.local/share/nvim/dein')
  call dein#add('~/.local/share/nvim/dein')
  "call dein#add('')

  " helpful
  call dein#add('tpope/vim-sleuth') " auto-detect idention settings
  "call dein#add('bling/vim-airline') " status bar bling

  " Colorschemes
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('ajmwagar/vim-deus')
  call dein#add('mhartington/oceanic-next')
  call dein#add('rakr/vim-one')
  call dein#add('kristijanhusak/vim-hybrid-material')
  call dein#add('joshdick/onedark.vim')
  call dein#add('icymind/NeoSolarized')

  " pretty x2
  call dein#add('nathanaelkane/vim-indent-guides')

  " File Management
  call dein#add('scrooloose/nerdtree', { 'on_cmd':  'NERDTreeToggle' })
  call dein#add('srstevenson/vim-picker')

  " Git Plugins
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')

  " Syntax completion/checking
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('majutsushi/tagbar')
  call dein#add('ekalinin/Dockerfile.vim')

  " Syntax/Language specific
  call dein#add('fatih/vim-go')
  call dein#add('cespare/vim-toml')
  call dein#add('rust-lang/rust.vim')
  call dein#add('LnL7/vim-nix')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('cespare/vim-toml')

 call dein#end()
 call dein#save_state()
endif

""" config

"" filetype config (magic?)
filetype plugin on
filetype plugin indent on

" show relative line numbers above and below absolute line number
set rnu
set nu

" mouse (allow click/scroll/etc TODO: not working)
set mouse=a
"set mouse=c

" show tabs
set list " show tabs

" pretty
set background=dark
set termguicolors
"colorscheme deep-space
"colorscheme deus
"colorscheme hybrid_material
"colorscheme hybrid_reverse " (pretty good)
"colorscheme jellybeans
"colorscheme NeoSolarized
"colorscheme OceanicNext
colorscheme one " (pretty good)
"colorscheme onedark

" gruvbox ("gruvbox")
let g:gruvbox_italic=1
" vim-one ("one")
let g:one_allow_italics = 1 " I love italic for comments
" vim-hybrid-material ("hybrid_material")
let g:enable_italic_font = 1
"let g:enable_bold_font = 1

"" vim-picker config (fzy)
nmap <unique> <leader>pe <Plug>PickerEdit
nmap <unique> <leader>ps <Plug>PickerSplit
nmap <unique> <leader>pt <Plug>PickerTabedit
nmap <unique> <leader>pv <Plug>PickerVsplit
nmap <unique> <leader>pb <Plug>PickerBuffer
nmap <unique> <leader>p] <Plug>PickerTag
nmap <unique> <leader>pw <Plug>PickerStag
nmap <unique> <leader>po <Plug>PickerBufferTag
nmap <unique> <leader>ph <Plug>PickerHelp

" Shougo/deoplete.nvim options
let g:deoplete#enable_at_startup = 1

" indent guides
let g:indent_guides_enable_on_vim_startup = 1

" yaml, the formatter is too particular and doesn't do a good job anyway
"autocmd FileType yaml let b:did_indent = 1

" custom filetype mappings
au BufReadPost Jenkinsfile* set syntax=groovy
au BufReadPost Jenkinsfile.* set syntax=groovy

if $VIMINSTALL == "y"
  call dein#install()
  quit
endif
