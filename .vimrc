execute pathogen#infect()
syntax on
filetype plugin indent on

"NERDTree Settings
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Python comment shortcut
" To add comment
map <C-C> :s/^/#<CR>
" to remove comment
map <C-S-x> :s/^#/<CR>

" Git Branch info settings
set laststatus=2 " Enables the status line at the bottom of Vim
set statusline=%f\ -\ %{GitBranchInfoString()}%=Ln:%l-Col:%c

" Convert tab to space in python files
autocmd FileType python set smartindent|set tabstop=4|set shiftwidth=4|set expandtab

" Show line number
set number

" Vim indent guides settings
"colorscheme tir_black
set background=light
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=blue
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=lightblue
