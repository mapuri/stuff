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
" tagbar plugin
Plugin 'majutsushi/tagbar'
" minibufexplorer plugin
Plugin 'weynhamz/vim-plugin-minibufexpl'
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

set nocompatible    " use vim defaults
set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set showmatch		"show matchin brackets when typing
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
"set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set noerrorbells
"set nobackup        " do not keep a backup file
set number          " show line numbers; this is set by autocmd for each buffer type
set ignorecase      " ignore case when searching
"set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h

"set autoindent     " always set autoindenting on
"set smartindent        " smart indent
"set cindent            " cindent
set noautoindent
set nosmartindent
set nocindent  

"set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
"set sm             " show matching braces, somewhat annoying...
"set nowrap         " don't wrap lines
syntax on           " syntax highlighing

"enjoy file surfing in vim
set wildmenu

"VIM diff settings
"set scrollbind

"set tabstop and also to trea tab as equivalent spaces
set tabstop=4
set expandtab

"use clipboard for all copy operations
if $TMUX == ''
    set clipboard=unnamed
endif

"set lines and colums
"set lines=45
"set columns=88
set backspace=2 "allow back space to remove characters no inserted in 'insert' mode
let g:winManagerWidth=35 " How wide should it be( pixels)
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' " What windows should it


"""""""""""""""""
"Set the color scheme
"""""""""""""""""
hi clear

if exists("syntax_on")
	syntax reset
endif

"let colors_name = "herald"

set background=dark

" Set some syntax-related variables
let ruby_operators = 1
set t_Co=256

if has("gui_running")

	" -> Text; Miscellaneous
	hi Normal         guibg=#1F1F1F guifg=#D0D0D0 gui=none
	hi SpecialKey     guibg=#1F1F1F guifg=#E783E9 gui=none
	hi VertSplit      guibg=#1F1F1F guifg=#FFEE68 gui=none
	hi SignColumn     guibg=#1F1F1F guifg=#BF81FA gui=none
	hi NonText        guibg=#1F1F1F guifg=#FC6984 gui=none
	hi Directory      guibg=#1F1F1F guifg=#FFEE68 gui=none 
	hi Title          guibg=#1F1F1F guifg=#6DF584 gui=bold

	" -> Cursor 
	hi Cursor         guibg=#FFEE68 guifg=#1F1F1F gui=none
	hi CursorIM       guibg=#FFEE68 guifg=#1F1F1F gui=none
	hi CursorColumn   guibg=#000000               gui=none
	hi CursorLine     guibg=#000000               gui=none

	" -> Folding
	hi FoldColumn     guibg=#001336 guifg=#003DAD gui=none
	hi Folded         guibg=#001336 guifg=#003DAD gui=none

	" -> Line info  
	hi LineNr         guibg=#000000 guifg=#696567 gui=none
	hi StatusLine     guibg=#000000 guifg=#696567 gui=none
	hi StatusLineNC   guibg=#25365a guifg=#696567 gui=none

	" -> Messages
	hi ErrorMsg       guibg=#A32024 guifg=#D0D0D0 gui=none
	hi Question       guibg=#1F1F1F guifg=#FFA500 gui=none
	hi WarningMsg     guibg=#FFA500 guifg=#000000 gui=none
	hi MoreMsg        guibg=#1F1F1F guifg=#FFA500 gui=none
	hi ModeMsg        guibg=#1F1F1F guifg=#FFA500 gui=none

	" -> Search 
	hi Search         guibg=#FF9E16               gui=none 
	hi IncSearch      guibg=#FF9E16               gui=none

	" -> Diff
	hi DiffAdd        guibg=#006124 guifg=#ED9000 gui=none
	hi DiffChange     guibg=#0B294A guifg=#A36000 gui=none
	hi DiffDelete     guibg=#081F38 guifg=#ED9000 gui=none
	hi DiffText       guibg=#12457D guifg=#ED9000 gui=underline

	" -> Menu
	hi Pmenu          guibg=#140100 guifg=#660300 gui=none
	hi PmenuSel       guibg=#F17A00 guifg=#4C0200 gui=none
	hi PmenuSbar      guibg=#430300               gui=none
	hi PmenuThumb     guibg=#720300               gui=none
	hi PmenuSel       guibg=#F17A00 guifg=#4C0200 gui=none

	" -> Tabs
	hi TabLine        guibg=#141414 guifg=#1F1F1F gui=none
	hi TabLineFill    guibg=#000000               gui=none
	hi TabLineSel     guibg=#1F1F1F guifg=#D0D0D0 gui=bold  
	"
	" -> Visual Mode
	hi Visual         guibg=#000000 guifg=#FFB539 gui=none
	hi VisualNOS      guibg=#000000 guifg=#696567 gui=none

	" -> Code
	hi Comment        guibg=#1F1F1F guifg=#696567 gui=none
	hi Constant       guibg=#1F1F1F guifg=#6DF584 gui=none
	hi String         guibg=#1F1F1F guifg=#FFB539 gui=none
	hi Error          guibg=#1F1F1F guifg=#FC4234 gui=none
	hi Identifier     guibg=#1F1F1F guifg=#70BDF1 gui=none
	hi Function       guibg=#1F1F1F guifg=#90CBF1 gui=none
	hi Ignore         guibg=#1F1F1F guifg=#1F1F1F gui=none
	hi MatchParen     guibg=#FFA500 guifg=#1F1F1F gui=none
	hi PreProc        guibg=#1F1F1F guifg=#BF81FA gui=none
	hi Special        guibg=#1F1F1F guifg=#FFB539 gui=none
	hi Todo           guibg=#1F1F1F guifg=#FC4234 gui=bold
	hi Underlined     guibg=#1F1F1F guifg=#FC4234 gui=underline
	hi Statement      guibg=#1F1F1F guifg=#E783E9 gui=none
	hi Operator       guibg=#1F1F1F guifg=#FC6984 gui=none
	hi Delimiter      guibg=#1F1F1F guifg=#FFEC48 gui=none
	hi Type           guibg=#1F1F1F guifg=#FFEE68 gui=none
	hi Exception      guibg=#1F1F1F guifg=#FC4234 gui=none

	" -> HTML-specific
	hi htmlBold                 guibg=#1F1F1F guifg=#D0D0D0 gui=bold
	hi htmlBoldItalic           guibg=#1F1F1F guifg=#D0D0D0 gui=bold,italic
	hi htmlBoldUnderline        guibg=#1F1F1F guifg=#D0D0D0 gui=bold,underline
	hi htmlBoldUnderlineItalic  guibg=#1F1F1F guifg=#D0D0D0 gui=bold,underline,italic
	hi htmlItalic               guibg=#1F1F1F guifg=#D0D0D0 gui=italic
	hi htmlUnderline            guibg=#1F1F1F guifg=#D0D0D0 gui=underline
	hi htmlUnderlineItalic      guibg=#1F1F1F guifg=#D0D0D0 gui=underline,italic

elseif &t_Co == 256

	" -> Text; Miscellaneous
	hi Normal         ctermbg=black  ctermfg=252   cterm=none
	hi SpecialKey     ctermbg=black  ctermfg=176   cterm=none
	hi VertSplit      ctermbg=black  ctermfg=227   cterm=none
	hi SignColumn     ctermbg=black  ctermfg=141   cterm=none
	hi NonText        ctermbg=black  ctermfg=204   cterm=none
	hi Directory      ctermbg=black  ctermfg=227   cterm=none 
	hi Title          ctermbg=black  ctermfg=84    cterm=bold

	" -> Cursor 
	hi Cursor         ctermbg=227  ctermfg=234   cterm=none
	hi CursorIM       ctermbg=227  ctermfg=234   cterm=none
	hi CursorColumn   ctermbg=234                cterm=bold
	hi CursorLine     ctermbg=234                cterm=bold

	" -> Folding
	hi FoldColumn     ctermbg=black  ctermfg=25    cterm=none
	hi Folded         ctermbg=black  ctermfg=25    cterm=none

	" -> Line info  
	hi LineNr         ctermbg=black  ctermfg=245   cterm=none
	hi StatusLine     ctermbg=234  ctermfg=241   cterm=none
	hi StatusLineNC   ctermbg=237  ctermfg=241   cterm=none

	" -> Messages
	hi ErrorMsg       ctermbg=124  ctermfg=252   cterm=none
	hi Question       ctermbg=black  ctermfg=214   cterm=none
	hi WarningMsg     ctermbg=214  ctermfg=0     cterm=none
	hi MoreMsg        ctermbg=black  ctermfg=214   cterm=none
	hi ModeMsg        ctermbg=black  ctermfg=214   cterm=none

	" -> Search 
	hi Search         ctermbg=234 ctermfg=214    cterm=none 
	hi IncSearch      ctermbg=234 ctermfg=214    cterm=none

	" -> Diff
	hi DiffAdd        ctermbg=22   ctermfg=208   cterm=none
	hi DiffChange     ctermbg=235  ctermfg=130   cterm=none
	hi DiffDelete     ctermbg=black  ctermfg=208   cterm=none
	hi DiffText       ctermbg=24   ctermfg=208   cterm=underline

	" -> Menu
	hi Pmenu          ctermbg=0    ctermfg=52    cterm=none
	hi PmenuSel       ctermbg=208  ctermfg=52    cterm=none
	hi PmenuSbar      ctermbg=52                 cterm=none
	hi PmenuThumb     ctermbg=52                 cterm=none
	hi PmenuSel       ctermbg=208  ctermfg=52    cterm=none

	" -> Tabs
	hi TabLine        ctermbg=233  ctermfg=234   cterm=none
	hi TabLineFill    ctermbg=0                  cterm=none
	hi TabLineSel     ctermbg=black  ctermfg=252   cterm=bold 
	"
	" -> Visual Mode
	hi Visual         ctermbg=0    ctermfg=215   cterm=none 
	hi VisualNOS      ctermbg=0    ctermfg=241   cterm=none

	" -> Code
	hi Comment        ctermbg=black  ctermfg=241   cterm=none
	hi Constant       ctermbg=black  ctermfg=84    cterm=none
	hi String         ctermbg=black  ctermfg=215   cterm=none
	hi Error          ctermbg=black  ctermfg=203   cterm=none
	hi Identifier     ctermbg=black  ctermfg=75    cterm=none
	hi Function       ctermbg=black  ctermfg=117   cterm=none
	hi Ignore         ctermbg=black  ctermfg=234   cterm=none
	hi MatchParen     ctermbg=214  ctermfg=234   cterm=none
	hi PreProc        ctermbg=black  ctermfg=141   cterm=none
	hi Special        ctermbg=black  ctermfg=215   cterm=none
	hi Todo           ctermbg=black  ctermfg=203   cterm=bold
	hi Underlined     ctermbg=black  ctermfg=203   cterm=underline
	hi Statement      ctermbg=black  ctermfg=176   cterm=none
	hi Operator       ctermbg=black  ctermfg=204   cterm=none
	hi Delimiter      ctermbg=black  ctermfg=227   cterm=none
	hi Type           ctermbg=black  ctermfg=227   cterm=none
	hi Exception      ctermbg=black  ctermfg=203   cterm=none 

	" -> HTML-specific
	hi htmlBold                 ctermbg=black  ctermfg=252   cterm=bold
	hi htmlBoldItalic           ctermbg=black  ctermfg=252   cterm=bold,italic
	hi htmlBoldUnderline        ctermbg=black  ctermfg=252   cterm=bold,underline
	hi htmlBoldUnderlineItalic  ctermbg=black  ctermfg=252   cterm=bold,underline,italic
	hi htmlItalic               ctermbg=black  ctermfg=252   cterm=italic
	hi htmlUnderline            ctermbg=black  ctermfg=252   cterm=underline
	hi htmlUnderlineItalic      ctermbg=black  ctermfg=252   cterm=underline,italic

elseif &t_Co == 16

	" -> Text; Miscellaneous
	hi Normal         ctermbg=8  ctermfg=15 cterm=none
	hi SpecialKey     ctermbg=8  ctermfg=5  cterm=none
	hi VertSplit      ctermbg=8  ctermfg=14  cterm=none
	hi SignColumn     ctermbg=8  ctermfg=5  cterm=none
  hi NonText        ctermbg=8  ctermfg=4  cterm=none
  hi Directory      ctermbg=8  ctermfg=14  cterm=none 
  hi Title          ctermbg=8  ctermfg=10 cterm=bold

  " -> Cursor 
  hi Cursor         ctermbg=14 ctermfg=8  cterm=none
  hi CursorIM       ctermbg=14 ctermfg=8  cterm=none
  hi CursorColumn   ctermbg=0            cterm=none
  hi CursorLine     ctermbg=0            cterm=none

  " -> Folding
  hi FoldColumn     ctermbg=0  ctermfg=1  cterm=none
  hi Folded         ctermbg=0  ctermfg=1  cterm=none

  " -> Line info  
  hi LineNr         ctermbg=0  ctermfg=7  cterm=none
  hi StatusLine     ctermbg=0  ctermfg=7  cterm=none
  hi StatusLineNC   ctermbg=0  ctermfg=7  cterm=none

  " -> Messages
  hi ErrorMsg       ctermbg=4  ctermfg=7  cterm=none
  hi Question       ctermbg=8  ctermfg=14 cterm=none
  hi WarningMsg     ctermbg=14 ctermfg=0  cterm=none
  hi MoreMsg        ctermbg=8  ctermfg=14 cterm=none
  hi ModeMsg        ctermbg=8  ctermfg=14 cterm=none

  " -> Search 
  hi Search         ctermbg=6             cterm=none 
  hi IncSearch      ctermbg=6             cterm=none

  " -> Diff
  hi DiffAdd        ctermbg=0  ctermfg=10 cterm=none
  hi DiffChange     ctermbg=0  ctermfg=14 cterm=none
  hi DiffDelete     ctermbg=0  ctermfg=12 cterm=none
  hi DiffText       ctermbg=1  ctermfg=14 cterm=underline

  " -> Menu
  hi Pmenu          ctermbg=0  ctermfg=4  cterm=none
  hi PmenuSel       ctermbg=14 ctermfg=4  cterm=none
  hi PmenuSbar      ctermbg=0             cterm=none
  hi PmenuThumb     ctermbg=4             cterm=none
  hi PmenuSel       ctermbg=14 ctermfg=4  cterm=none

  " -> Tabs
  hi TabLine        ctermbg=7  ctermfg=8  cterm=none
  hi TabLineFill    ctermbg=0             cterm=none
  hi TabLineSel     ctermbg=8  ctermfg=7  cterm=bold  
  "
  " -> Visual Mode
  hi Visual         ctermbg=0  ctermfg=14 cterm=none
  hi VisualNOS      ctermbg=0  ctermfg=7  cterm=none

  " -> Code
  hi Comment        ctermbg=8  ctermfg=7  cterm=none
  hi Constant       ctermbg=8  ctermfg=10 cterm=none
  hi String         ctermbg=8  ctermfg=6  cterm=none
  hi Error          ctermbg=8  ctermfg=4  cterm=none
  hi Identifier     ctermbg=8  ctermfg=11 cterm=none
  hi Function       ctermbg=8  ctermfg=11 cterm=none
  hi Ignore         ctermbg=8  ctermfg=8  cterm=none
  hi MatchParen     ctermbg=14 ctermfg=8  cterm=none
  hi PreProc        ctermbg=8  ctermfg=5  cterm=none
  hi Special        ctermbg=8  ctermfg=12 cterm=none
  hi Todo           ctermbg=8  ctermfg=12 cterm=bold
  hi Underlined     ctermbg=8  ctermfg=12 cterm=underline
  hi Statement      ctermbg=8  ctermfg=13 cterm=none
  hi Operator       ctermbg=8  ctermfg=4  cterm=none
  hi Delimiter      ctermbg=8  ctermfg=14 cterm=none
  hi Type           ctermbg=8  ctermfg=14 cterm=none
  hi Exception      ctermbg=8  ctermfg=12 cterm=none

  " -> HTML-specific
  hi htmlBold                  ctermbg=8 ctermfg=7 cterm=bold
  hi htmlBoldItalic            ctermbg=8 ctermfg=7 cterm=bold,italic
  hi htmlBoldUnderline         ctermbg=8 ctermfg=7 cterm=bold,underline
  hi htmlBoldUnderlineItalic   ctermbg=8 ctermfg=7 cterm=bold,underline,italic
  hi htmlItalic                ctermbg=8 ctermfg=7 cterm=italic
  hi htmlUnderline             ctermbg=8 ctermfg=7 cterm=underline
  hi htmlUnderlineItalic       ctermbg=8 ctermfg=7 cterm=underline,italic


elseif &t_Co == 8

	" -> Text; Miscellaneous
	hi Normal         ctermbg=8  ctermfg=7  cterm=none
	hi SpecialKey     ctermbg=8  ctermfg=5  cterm=none
	hi VertSplit      ctermbg=8  ctermfg=6  cterm=none
	hi SignColumn     ctermbg=8  ctermfg=5  cterm=none
  hi NonText        ctermbg=8  ctermfg=4  cterm=none
  hi Directory      ctermbg=8  ctermfg=6  cterm=none 
  hi Title          ctermbg=8  ctermfg=2  cterm=bold

  " -> Cursor 
  hi Cursor         ctermbg=6  ctermfg=8  cterm=none
  hi CursorIM       ctermbg=6  ctermfg=8  cterm=none
  hi CursorColumn   ctermbg=0             cterm=none
  hi CursorLine     ctermbg=0             cterm=none

  " -> Folding
  hi FoldColumn     ctermbg=0  ctermfg=1  cterm=none
  hi Folded         ctermbg=0  ctermfg=1  cterm=none

  " -> Line info  
  hi LineNr         ctermbg=0  ctermfg=7  cterm=none
  hi StatusLine     ctermbg=0  ctermfg=7  cterm=none
  hi StatusLineNC   ctermbg=0  ctermfg=7  cterm=none

  " -> Messages
  hi ErrorMsg       ctermbg=4  ctermfg=7  cterm=none
  hi Question       ctermbg=8  ctermfg=6  cterm=none
  hi WarningMsg     ctermbg=6  ctermfg=0  cterm=none
  hi MoreMsg        ctermbg=8  ctermfg=6  cterm=none
  hi ModeMsg        ctermbg=8  ctermfg=6  cterm=none

  " -> Search 
  hi Search         ctermbg=6             cterm=none 
  hi IncSearch      ctermbg=6             cterm=none

  " -> Diff
  hi DiffAdd        ctermbg=0  ctermfg=2  cterm=none
  hi DiffChange     ctermbg=0  ctermfg=6  cterm=none
  hi DiffDelete     ctermbg=0  ctermfg=4  cterm=none
  hi DiffText       ctermbg=1  ctermfg=6  cterm=underline

  " -> Menu
  hi Pmenu          ctermbg=0  ctermfg=4  cterm=none
  hi PmenuSel       ctermbg=6  ctermfg=4  cterm=none
  hi PmenuSbar      ctermbg=0             cterm=none
  hi PmenuThumb     ctermbg=4             cterm=none
  hi PmenuSel       ctermbg=6  ctermfg=4  cterm=none

  " -> Tabs
  hi TabLine        ctermbg=7  ctermfg=8  cterm=none
  hi TabLineFill    ctermbg=0             cterm=none
  hi TabLineSel     ctermbg=8  ctermfg=7  cterm=bold  
  "
  " -> Visual Mode
  hi Visual         ctermbg=0  ctermfg=6 cterm=none
  hi VisualNOS      ctermbg=0  ctermfg=7  cterm=none

  " -> Code
  hi Comment        ctermbg=8  ctermfg=7  cterm=none
  hi Constant       ctermbg=8  ctermfg=2 cterm=none
  hi String         ctermbg=8  ctermfg=6  cterm=none
  hi Error          ctermbg=8  ctermfg=4  cterm=none
  hi Identifier     ctermbg=8  ctermfg=3 cterm=none
  hi Function       ctermbg=8  ctermfg=3 cterm=none
  hi Ignore         ctermbg=8  ctermfg=8  cterm=none
  hi MatchParen     ctermbg=6  ctermfg=8  cterm=none
  hi PreProc        ctermbg=8  ctermfg=5  cterm=none
  hi Special        ctermbg=8  ctermfg=4 cterm=none
  hi Todo           ctermbg=8  ctermfg=4 cterm=bold
  hi Underlined     ctermbg=8  ctermfg=4 cterm=underline
  hi Statement      ctermbg=8  ctermfg=5 cterm=none
  hi Operator       ctermbg=8  ctermfg=4  cterm=none
  hi Delimiter      ctermbg=8  ctermfg=6 cterm=none
  hi Type           ctermbg=8  ctermfg=6 cterm=none
  hi Exception      ctermbg=8  ctermfg=4 cterm=none

  " -> HTML-specific
  hi htmlBold                  ctermbg=8 ctermfg=7 cterm=bold
  hi htmlBoldItalic            ctermbg=8 ctermfg=7 cterm=bold,italic
  hi htmlBoldUnderline         ctermbg=8 ctermfg=7 cterm=bold,underline
  hi htmlBoldUnderlineItalic   ctermbg=8 ctermfg=7 cterm=bold,underline,italic
  hi htmlItalic                ctermbg=8 ctermfg=7 cterm=italic
  hi htmlUnderline             ctermbg=8 ctermfg=7 cterm=underline
  hi htmlUnderlineItalic       ctermbg=8 ctermfg=7 cterm=underline,italic

endif

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline

" Spellcheck formatting
if has("spell")
	hi SpellBad   guisp=#FC4234 gui=undercurl
	hi SpellCap   guisp=#70BDF1 gui=undercurl
	hi SpellLocal guisp=#FFEE68 gui=undercurl
	hi SpellRare  guisp=#6DF584 gui=undercurl
endif
""""""""""""""
"COLR SCHEME END
""""""""""""""

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
    
    " When using mutt, text width=72
    au FileType mail,tex set textwidth=72
    au FileType cpp,c,java,sh,pl,py,php,asp  set autoindent
    au FileType cpp,c,java,sh,pl,py,php,asp  set smartindent
    au FileType cpp,c,java,sh,pl,py,php,asp  set cindent
    "au BufRead mutt*[0-9] set tw=72
    
    au BufNewFile,BufRead *.log set nonumber  "no line numbers when viewing logs
    au BufNewFile,BufRead show-tech-* set nonumber  "no line numbers when viewing show-tech logs

    " Automatically chmod +x Shell and Perl scripts
    "au BufWritePost   *.sh             !chmod +x %
    "au BufWritePost   *.pl             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
endif

nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
"map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
"----- write out html file
map ,h :source $VIM/vim71/syntax/2html.vim<cr>:w<cr>:clo<cr>

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

"""""""""""""""""""""""""""""
" enable minibuffer-explorer
""""""""""""""""""""""""""""""
"let miniBufExplVSplit = 25   "vertical mini-buf column width in chars
nnoremap <silent> <F7> :TMiniBufExplorer<CR>
map <F1> :<C-U>exe "buffer".v:count<CR> " map F1 to open specific buffer. usage '<buff-num><F3>'
map <F2> :bprevious<CR>  " map F2 to open previous buffer
map <F3> :bnext<CR>      " map F3 to open next buffer
map <F4> :hide<CR>       " map F4 to hide open window/buffer
hi MBEChanged guibg=darkblue ctermfg=green ctermbg=white
hi MBENormal guibg=darkblue ctermfg=green ctermbg=white
set hidden               " allow to move around buffer even when there are unsaved changes

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

"au FocusLost * :set number
"au FocusGained * :set relativenumber
"au InsertEnter * :set number
"au InsertLeave * :set relativenumber
