"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                                    "
"                  __   __   __     __    __     ______     ______                   "
"                 /\ \ / /  /\ \   /\ '-./  \   /\  == \   /\  ___\                  "
"                 \ \ \'/   \ \ \  \ \ \-./\ \  \ \  __<   \ \ \____                 "
"                  \ \__|    \ \_\  \ \_\ \ \_\  \ \_\ \_\  \ \_____\                "
"                   \/_/      \/_/   \/_/  \/_/   \/_/ /_/   \/_____/                "
"                                                                                    "
"                                                                                    "
"------------------------------------------------------------------------------------"
" To install vim plugins and vundle on linux/unix machines do the following:         "
" 1 - sudo apt-get install vim  # you must have the latest version                   "
" 2 - sudo apt-get install git  # Most likely already installed and if not WTF       "
" 3 - git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim "
" 4 - start vim and run :PluginInstall                                               "
" 5 - code some shit up and have fun learning VIM                                    "
" 6.0 - start using VI mode and work faster by using the following line in .bashrc   "
" 6.1 - in bashrc add the following to the end of your file: set -o vi               "
" refer to http://www.catonmat.net/download/bash-vi-editing-mode-cheat-sheet.pdf     "
" for additional commands                                                            "
"                                                                                    "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

let $vimhome=fnamemodify(resolve(expand("~/.vimrc")), ':p:h')
let $vundle=$vimhome."/bundle/Vundle.vim"

" Be iMproved
set nocompatible

"=====================================================
"" Vundle settings
"=====================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required
    " need to install ctr-p and fugitive
    "-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files

    "-------------------=== Other ===-------------------------------
    Plugin 'scrooloose/nerdcommenter'           " commenting plugin
    "Plugin 'w0rp/ale'                           " lint plugin see https://github.com/w0rp/ale
    Plugin 'mattn/emmet-vim'                    " CSS, HTML, Javascript Autocomplete
    Plugin 'AutoSave'                           " AutoSave files turn off with :AutoSaveToggle
    Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    Plugin 'rosenfeld/conque-term'              " Consoles as buffers
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'flazz/vim-colorschemes'             " Colorschemes
    "------------------=== Installation For Powerline ===-------------
    "install powerline via pip3 install powerline-status
    "install fonts for linux via sudo apt-get install fonts-powerline
    "install fonts for mac via
    "---
    "# clone
    "git clone https://github.com/powerline/fonts.git --depth=1
    "# install
    "cd fonts
    "./install.sh
    "# clean-up a bit
    "cd ..
    "rm -rf fonts
    "On mac set the font in terminal preferences to meslo lg m dz for
    "powerline
    "On ubunutu and linux flavors add the following to /etc/default/console-setup
    "---
    "CHARMAP="UTF-8"
    "CODESET="Lat7"
    "FONTFACE="Terminus"
    "FONTSIZE="28x14"
    "apply settings at terminal with setupcon
    "--- add the following to bashrc ---
    "         powerline-daemon -q
    "        POWERLINE_BASH_CONTINUATION=1
    "        POWERLINE_BASH_SELECT=1
    "        source /usr/local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

    "-------------------=== Snippets support ===--------------------
    Plugin 'garbas/vim-snipmate'                " Snippets manager
    Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
    Plugin 'tomtom/tlib_vim'                    " dependencies #2
    Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    Plugin 'tpope/vim-commentary'               " Comment stuff out
    Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
    Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin

    "-------------------=== Python  ===-----------------------------
    Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
    "Plugin check out AG for searching
    Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim
    Plugin 'fatih/vim-go'                       " go language support including :GoBuild, :GoTest, :GoInstall, and :GoRun

call vundle#end()                           " required
filetype on
filetype plugin on
filetype plugin indent on

"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors
colorscheme wombat256mod                    " set color scheme

set mouse=a                                 " enable mouse clicks and highlight
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

"set nobackup 	                            " no backup files
"set nowritebackup                           " only in case you don't want a backup file while editing
"set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard
set pastetoggle=<F2>                        " set paste and nopaste to toggle with <F2>
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

" Additional mappings for Esc (useful for MacBook with touch bar)
inoremap jj <Esc>
inoremap jk <Esc>

" STOP using the arrow keys its redundant with vim
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Mapping for changing between splits faster"
"nnoremap <C-J> <C-W>j
"nnoremap <C-K> <C-W>k
"nnoremap <C-L> <C-W>l
"nnoremap <C-H> <C-W>h
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"=====================================================
"" Tmux Settings
"=====================================================
if &term =~ '256color'
   " disable Background Color Erase (BCE) so that color schemes
   " render properly when inside 256-color tmux and GNU screen.
   " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
   set t_ut=
endif
"=====================================================
"" AutoSave Settings
"=====================================================
let g:auto_save = 1                                " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 0                  " do not change the 'updatetime' option
"let g:auto_save_in_insert_mode = 0                 " do not save while in insert mode
"let g:auto_save_silent = 1                         " do not display the auto-save notification
"let g:auto_save_postsave_hook = 'TagsGenerate'     " this will run :TagsGenerate after each save
"=====================================================
"" Emmet settings
"=====================================================
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"let g:user_emmet_mode='a'    "enable all function in all mode.
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-Z>'
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')),""\n"))
"for webapi setting go to https://github.com/mattn/webapi-vim
"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

"=====================================================
"" AirLine settings
"=====================================================
"let g:airline_theme='badwolf'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" TagBar settings
"=====================================================
nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=0
let g:tagbar_width=38
"autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>

"=====================================================
"" SnipMate settings
"=====================================================
let g:snippets_dir='~/.vim/vim-snippets/snippets'

"=====================================================
"" Riv.vim settings
"=====================================================
let g:riv_disable_folding=0

"=====================================================
"" Python settings
"=====================================================

" python executables for different plugins
let g:pymode_python='python3'
let g:syntastic_python_python_exec='python3'

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=1
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=1

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=120
augroup END

" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python3']

" YouCompleteMe
set completeopt-=preview

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>
"---------------- sudo remap to save with sudo rights -----------------
cnoremap w!! w !sudo tee %
