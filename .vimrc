""""""""""""""""""""""
" Plugin(s)/Bundle(s)
" Pre-requisite:
" - download and install vundle
"   git clone https://github.com/gmarik/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" golang plugin
Plugin 'fatih/vim-go'
" plugin for jumping between declarations
Plugin 'ctrlpvim/ctrlp.vim'
" tagbar plugin - for navigating source
Plugin 'majutsushi/tagbar'
" vimpowerline plugin - for status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" git integration
Plugin 'tpope/vim-fugitive'
" coloschem plugin - add more schemes to colorscheme command
Plugin 'flazz/vim-colorschemes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vimrc file, http://phuzz.org

set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set expandtab
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set backspace=2 "allow back space to remove characters no inserted in 'insert' mode
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set showmatch		"show matchin brackets when typing
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set novisualbell    " turn off visual bell
set noerrorbells
set number          " show line numbers; this is set by autocmd for each buffer type
set ignorecase      " ignore case when searching
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set noautoindent
set nosmartindent
set nocindent

syntax on           " syntax highlighing

""""""""
"enjoy file surfing in vim
""""""""
set wildmenu

""""""""
"use clipboard for all copy operations
""""""""
if $TMUX == ''
    set clipboard=unnamed
endif

""""""""""""""""""
"Set the color scheme
""""""""""""""""""
set t_Co=256
colorscheme jellyx

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au BufNewFile,BufRead *.log set nonumber  "no line numbers when viewing logs
    au BufNewFile,BufRead show-tech-* set nonumber  "no line numbers when viewing show-tech logs
endif

""""""""""""""""""
" Print timestamp
""""""""""""""""""
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>

"""""""""""""""""""""""""""""
" cplink without closing vim
"""""""""""""""""""""""""""""
function DefCo()
    let l:fn = bufname("%")
    let l:cmd = "ww --copy " . l:fn
    let l:res = system(l:cmd)
    echo l:res
    execute ":e"
endfunction
map cl  :call DefCo()<CR>

""""""""""""""""""""""""""""
"buffer navigation related customization
""""""""""""""""""""""""""""
map <F1> :<C-U>exe "buffer".v:count<CR> " map F1 to open specific buffer. usage '<buff-num><F3>'
map <F2> :bprevious<CR>  " map F2 to open previous buffer
map <F3> :bnext<CR>      " map F3 to open next buffer
map <F4> :hide<CR>       " map F4 to hide open window/buffer
hi MBEChanged guibg=darkblue ctermfg=green ctermbg=white
hi MBENormal guibg=darkblue ctermfg=green ctermbg=white
set hidden               " allow to move around buffer even when there are unsaved changes

"""""""""""""""""""
" customize vim-airline
"""""""""""""""""""
" 'airline_powerline_fonts' requires fonts installed (on local machine running
" the terminal) from: https://github.com/powerline/fonts.
" After installing set the font to: 'Meslo LG S' in iTerm2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'jellybeans'
" lightweight buffer explorer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_min_count = 2

"""""""""""""""""""
" enable tagbar
"""""""""""""""""""
let g:tagbar_left = 1
nnoremap <silent> <F8> :TagbarToggle<CR>

"""""""""""""""""
" 80 column and highlight cursor
"""""""""""""""""
set colorcolumn=80
highlight ColorColumn ctermbg=red
set cursorline
highlight CursorLine cterm=bold

"""""""""""""""""
" resize current buffer by +/- 2
"""""""""""""""""
nnoremap <S-d> :vertical resize -2<cr>
nnoremap <S-s> :resize +2<cr>
nnoremap <S-w> :resize -2<cr>
nnoremap <S-a> :vertical resize +2<cr>

""""""""""""""""
" Always show the status line
""""""""""""""""
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

function! StatuslineModeColor()
    let s:StatuslineMode=mode()
    if s:StatuslineMode == 'n'
        hi StatusLine ctermfg=white ctermbg=240 cterm=NONE
        hi StatusLineNC ctermfg=white ctermbg=237 cterm=NONE
    elseif s:StatuslineMode == 'i'
        hi StatusLine ctermfg=white ctermbg=75 cterm=NONE
        hi StatusLineNC ctermfg=white ctermbg=237 cterm=NONE
    elseif s:StatuslineMode == 'r'
        hi StatusLine ctermfg=white ctermbg=87 cterm=NONE
        hi StatusLineNC ctermfg=white ctermbg=237 cterm=NONE
    endif
endfunc

set laststatus=2
set statusline=\ %{HasPaste()}%f%m%r%h\ %w\ \ Line:\ %c,%l/%L:%P
let &stl.='%{StatuslineModeColor()}'

"""""""""""""""""
" Folding for C files for ease of going through API docs.
" But don't fold comments
"""""""""""""""""
"foldmethod=syntax
"let c_no_comment_fold = 1

"""""""""""""""""
" Golang related defines
""""""""""""""""
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

func GoTags()
    " cscope like key mapping for go-plugin
    nmap <C-\>g :GoDef<CR>
    nmap <C-\>s :GoReferrers<CR>
    nmap <C-\>c :GoCallees<CR>
    nmap <C-\>e :GoCallers<CR>
    nmap <C-\>k :GoCallstack<CR>
    nmap <C-\>d :GoInfo<CR>
    nmap <C-\>i :GoImplements<CR>
    nmap <C-\>t :GoDeclsDir<CR>
    " package related
    nmap <C-\>f :GoFiles<CR>
    nmap <C-\>p :GoDeps<CR>
    " refactor
    nmap <C-\>r :GoRename<CR>
endfunction

func GoEnv()
    " add pwd to the GOPATH
    let $GOPATH .= ':'.$PWD
endfunction

let g:cscope_tags_loaded=0
func CscopeTags()
    if g:cscope_tags_loaded == 0
        "source the cscope map file
        source ~/cscope_maps.vim
        map csr :!cscope -q<CR>:cs reset<CR><CR>
        let g:cscope_tags_loaded=1
    endif
endfunction

au BufWinEnter,BufRead,BufNewFile *.md          setfiletype markdown
au BufWinEnter,BufRead,BufNewFile *.go          setfiletype go
au BufWinEnter,BufRead,BufNewFile *.json        setfiletype javascript
" load cscope code navigation key map by default
au BufWinEnter,BufRead,BufNewFile,BufEnter *             call CscopeTags()
" load golang specific code navigation key maps
au BufWinEnter,BufRead,BufNewFile,BufEnter *.go          call GoTags()
au BufWinEnter,BufRead,BufNewFile *.go          call GoEnv()
"""""""""""""""""

""""""
"use relative nummber for ease of movement
"""""""
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc
" use ctrl+n to taggle between numbering
nnoremap <C-n> :call NumberToggle()<cr>
