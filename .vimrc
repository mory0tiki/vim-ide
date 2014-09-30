execute pathogen#infect()
syntax on
filetype plugin indent on

"NERDTree Settings
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Foding code 
set foldmethod=indent

" Python comment shortcut
" To add comment
"map <C-C> :s/^/#<CR>
" to remove comment
"map <C-S-x> :s/^#/<CR>

" Git Branch info settings
set laststatus=2 " Enables the status line at the bottom of Vim
set statusline=%f%m\ -\ %{GitBranchInfoString()}%=Ln:%l-Col:%c
hi StatusLine ctermbg=white ctermfg=red
hi StatusLineNC ctermbg=darkgrey ctermfg=blue
hi StatusLineModified term=bold,reverse cterm=bold,reverse ctermfg=DarkRed  gui=bold,reverse guifg=DarkRed
hi StatusLineModifiedNC term=reverse      cterm=reverse      ctermfg=DarkRed  gui=reverse      guifg=DarkRed
hi StatusLinePreview term=bold,reverse cterm=bold,reverse ctermfg=Blue     gui=bold,reverse guifg=Blue
hi StatusLinePreviewNC term=reverse      cterm=reverse      ctermfg=Blue     gui=reverse      guifg=Blue
hi StatusLineReadonly term=bold,reverse cterm=bold,reverse ctermfg=Grey     gui=bold,reverse guifg=DarkGrey
hi StatusLineReadonlyNC term=reverse      cterm=reverse      ctermfg=Grey     gui=reverse      guifg=DarkGrey
hi StatusLineSpecial term=bold,reverse cterm=bold,reverse ctermfg=DarkBlue gui=bold,reverse guifg=DarkBlue
hi StatusLineSpecialNC term=reverse      cterm=reverse      ctermfg=DarkBlue gui=reverse      guifg=DarkBlue
hi StatusLineUnmodifiable term=bold,reverse cterm=bold,reverse ctermfg=Grey     gui=bold,reverse guifg=Grey
hi StatusLineUnmodifiableNC term=reverse      cterm=reverse      ctermfg=Grey     gui=reverse      guifg=Grey
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
let g:indent_guides_guide_size=1

" Json formater
map <leader>j :% !python -m json.tool<CR>
