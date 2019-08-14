set nocompatible              "46 down
filetype off
"set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"keeping this for updating vundle itself (:PluginUpdate)
Plugin 'gmarik/Vundle.vim'

"rest of the packages
Plugin 'CSApprox'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'a.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/AfterColors.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
" Plugin 'vim-syntastic/syntastic'
Plugin 'jez/vim-better-sml'
Plugin 'cloudhead/neovim-fuzzy'
Plugin 'calviken/vim-gdscript3'
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/echodoc.vim'
Plugin 'mileszs/ack.vim'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'matze/vim-meson'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/cscope.vim'
" Plugin 'luochen1990/rainbow'
Plugin 'neoclide/coc.nvim'
Plugin 'pgdouyon/vim-yin-yang'

call vundle#end()
filetype plugin indent on

"gui options
set guioptions+=c
set guioptions+=R
set guioptions-=m
set guioptions-=r
set guioptions-=b
set guioptions-=T
set guioptions-=R
set guioptions-=L
set guioptions-=e

set hlsearch

if has("gui_running")
    set lines=999 columns=999
endif
"set guicursor=a:blinkon0 "slow down blinking speed of cursor
        " remapping some symbols
    inoremap ' =
    inoremap < {
    inoremap > }
    inoremap : -
    inoremap " >
    inoremap <C-m> :
    inoremap <C-A-i> [
    inoremap <C-A-o> ]
    inoremap <C-A-p> !
    inoremap <C-A-u> '
    inoremap <C-A-l> +
    inoremap <A-j> <
    inoremap <A-k> >
    inoremap <C-a-j> (
    inoremap <C-A-k> )
    inoremap <C-l> _
    inoremap <C-k> *
    inoremap <C-o> "
    inoremap <C-d> %
    inoremap <C-e> &
    inoremap ( #
    cnoremap ' =
    cnoremap < {
    cnoremap > }
    cnoremap : -
    cnoremap <C-m> :
    cnoremap <C-A-j> (
    cnoremap <C-A-k> )
    cnoremap <C-A-i> [
    cnoremap <C-A-o> ]
    cnoremap <C-A-p> !
    cnoremap <C-A-u> '
    cnoremap <C-A-l> +
    cnoremap <C-l> _
    cnoremap <C-k> *
    cnoremap <C-o> "
    cnoremap <C-d> %
    cnoremap <C-e> &
    cnoremap <A-j> <
    cnoremap <A-k> >
    cnoremap ( #
    noremap ' =
    noremap < {
    noremap > }
    noremap : -
    noremap " >
    noremap <C-m> :
    noremap <C-A-j> (
    noremap <C-A-k> )
    noremap <C-A-i> [
    noremap <C-A-o> ]
    noremap <C-A-p> !
    noremap <C-A-u> '
    noremap <C-A-l> +
    noremap <C-l> _
    noremap <C-k> *
    noremap <C-d> %
    noremap <A-j> <
    noremap <A-k> >
    noremap <C-j> <CR>
    inoremap <C-j> <CR>
    cnoremap <C-j> <CR>
    tnoremap <C-j> <CR>
    tnoremap ' =
    tnoremap < {
    tnoremap > }
    tnoremap : -
    tnoremap " >
    tnoremap <C-m> :
    tnoremap <C-A-i> [
    tnoremap <C-A-o> ]
    tnoremap <C-A-p> !
    tnoremap <C-A-u> '
    tnoremap <C-A-l> +
    tnoremap <A-j> <
    tnoremap <A-k> >
    tnoremap <C-a-j> (
    tnoremap <C-A-k> )
    tnoremap <C-l> _
    tnoremap <C-k> *
    tnoremap <C-o> "
    tnoremap <C-d> %
    tnoremap <C-e> &
    tnoremap ( #

" remapping numbers
    cnoremap 1 6
    cnoremap 3 0
    cnoremap 5 8
    cnoremap 0 5
    cnoremap 9 3
    cnoremap 8 1
    cnoremap 6 9
    noremap 8 1
    noremap 0 5
    noremap 1 6
    noremap 3 0
    noremap 5 8
    noremap 9 3
    noremap 6 9
    inoremap 1 6
    inoremap 3 0
    inoremap 5 8
    inoremap 0 5
    inoremap 9 3
    inoremap 8 1
    inoremap 6 9
    tnoremap 1 6
    tnoremap 3 0
    tnoremap 5 8
    tnoremap 0 5
    tnoremap 9 3
    tnoremap 8 1
    tnoremap 6 9

au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &

filetype plugin indent on

"NERDTree will ignore executable files
function! NERDTreeCustomIgnoreFilter(path)
        return a:path.isExecutable
    endfunction

" set number
" set t_Co=256
" colorscheme gruvbox
" colorscheme cabin
" colorscheme relaxedgreen
" colo fahrenheit
" colo xterm16
colo yin
" syntax off

"tab = 8 spaces
" set nowrap
set smartindent
set tabstop=8
set ts=8
set shiftwidth=8
" set expandtab

"disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"use (,) instead of (\) as leader, better for things like nerdcommenter
let mapleader=','
let g:slimv_leader='m'
set ignorecase
set gfn=Monospace\ 15
let g:ycm_collect_identifiers_from_tags_files = 1

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif

"last pos when reopening file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif

let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list=1

set autochdir
let NERDTreeChDirMode=2
"easymotion use leader once
map <Leader> <Plug>(easymotion-prefix)
" easymotion colors
" hi link EasyMotionTarget Search
" hi link EasyMotionTarget2First Search
" hi link EasyMotionTarget2Second Search
" hi link EasyMotionShade Comment

"ultisnips mapping
let g:UltiSnipsExpandTrigger = "é"
let g:UltiSnipsJumpForwardTrigger = "ï"
let g:UltiSnipsJumpBackwardTrigger = "ì"

let NERDSpaceDelims = 1

" youcompleteme mappings
" nnoremap <leader>g :YcmCompleter GoTo<CR>
" nnoremap <leader>z :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>x :YcmCompleter GetType<CR>
" nnoremap <leader>r :YcmCompleter GoToReferences<CR>


" autocmd BufWritePost * :syntax on

"if has("multi_byte")
	" set encoding=utf-8
        " setglobal fileencoding=utf-8
        " set fileencodings=utf-8
        " setglobal bomb
"endif

" turn off errorbells
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

" nerdtree cursorline disabled
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set nocursorline

augroup NerdCursor
        autocmd!
        autocmd BufEnter NERD_Tree_* hi CursorLine gui=underline
        autocmd BufLeave NERD_Tree_* highlight clear CursorLine
        autocmd BufAdd * highlight clear CursorLine
augroup END

" let loaded_matchparen = 1
let g:EasyMotion_smartcase=1
" hi EasyMotionTarget2First ctermfg=darkblue
" hi EasyMotionTarget2Second ctermfg=darkblue
set completeopt-=preview
set noshowmode
let g:ycm_global_ycm_extra_conf='/home/mustapha/rnd/c/.ycm_extra_conf.py'

nnoremap fn :tabnew<CR>
nnoremap fj :tabnext<CR>
nnoremap fk :tabprev<CR>

tnoremap <A-,> <C-l>
tnoremap <A-i> <C-\><C-n>

let python_highlight_all = 1
let g:sml_auto_create_def_use = 'always'

let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }                                                                               

let NERDTreeIgnore = ['\.js$']
" coc.nvim stuff
nmap <silent> <C-d> <Plug>(coc-definition)
nmap <silent> <C-r> <Plug>(coc-references)
nn <silent> K :call CocActionAsync('doHover')<cr>

inoremap <silent><expr> <A-;>
      \ pumvisible() ? "\<Down>" :
      \ <SID>check_back_space() ? "\<A-;>" :
      \ coc#refresh()

inoremap <silent><expr> <A-f>
      \ pumvisible() ? "\<Up>" :
      \ <SID>check_back_space() ? "\<A-f>" :
      \ coc#refresh()

" nmap <silent> <C-x> <Plug>(coc-diagnostic-prev)
" nmap <silent> <C-c> <Plug>(coc-diagnostic-next)

" fuzzy
nnoremap <C-p> :FuzzyOpen<CR>

" chromatica colors
" let g:chromatica#libclang_path='/usr/lib/x86_64-linux-gnu/libclang-6.0.so'
" let g:chromatica#enable_at_startup=1

set laststatus=0 ruler
let g:nvim_typescript#max_completion_detail = 25

let g:echodoc_enable_at_startup = 1

" ack stuff
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ack_autoclose = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif

" rainbow color paren
let g:rainbow_active = 1

nnoremap <silent> <A-k> <c-w>l
nnoremap <silent> <A-j> <c-w>h
