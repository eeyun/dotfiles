set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'tpope/vim-fugitive'
    Plugin 'ervandew/supertab'
    Plugin 'ntpeters/vim-better-whitespace'
    Plugin 'majutsushi/tagbar'
    Plugin 'mhinz/vim-startify'
    Plugin 'regedarek/ZoomWin'
    Plugin 'rust-lang/rust.vim'
    Plugin 'vim-syntastic/syntastic'
    Plugin 'Chiel92/vim-autoformat'
    Plugin 'powerman/vim-plugin-AnsiEsc'
    Plugin 'gcmt/taboo.vim'

call vundle#end()
    set viminfo=
    set nobackup
    set nowritebackup
    set undofile
    set undodir=~/.vim/undo
    set noswapfile
    set nowrap
    set background=dark
    set termencoding=utf-8
    set encoding=utf-8
    set laststatus=2
    set history=1000
    set number
    set term=screen-256color
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set showbreak=↪

    syntax enable
    filetype on
    au BufNewFile,BufRead *.rs set filetype=rust

    " Status
    set guifont=Meslo\ for\ Powerline
    let g:Powerline_symbols = 'fancy'
    let g:airline_powerline_fonts = 1
    let g:airline_detect_modified=1
    let g:airline_detect_paste=1
    let g:airline_detect_crypt=1
    let g:airline_detect_spell=1
    let g:airline_detect_iminsert=0
    let g:airline_theme='base16'

    " Shortcuts
    " leader is \
    silent! nmap <C-\> :NERDTreeTabsToggle<CR>
    silent! nmap <leader>t :NERDTreeTabsToggle<CR>
    silent! nmap <leader>x :CtrlPBuffer<CR>
    noremap <leader>b :TagbarToggle<CR>
    nmap <Leader>f :Autoformat<CR>
    nmap <leader>p :setlocal paste! paste?<cr>
    noremap <F3> :TagbarToggle<CR>

     " Tree
    let g:NERDTreeWinSize=20
    let NERDTreeIgnore = ['\.o$', '\.lo$', '\.swp$']
    let NERDTreeShowHidden=1
    let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ "Unknown"   : "?"
    \ }


    " True Color
    "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
    "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
    "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
    if (empty($TMUX))
        if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
            let $NVIM_TUI_ENABLE_TRUE_COLOR=1
        endif
        "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
        "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
        " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
        if (has("termguicolors"))
            set termguicolors
        endif
    endif

    " Syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 0
    let g:syntastic_check_on_wq = 0
    let g:formatdef_rustfmt = '"rustfmt"'
    let g:formatters_rust = ['rustfmt']
    let g:rustfmt_autosave = 1

    " Tagbar
    let g:tagbar_type_rust = {
        \ 'ctagstype' : 'rust',
        \ 'kinds' : [
            \'T:types,type definitions',
            \'f:functions,function definitions',
            \'g:enum,enumeration names',
            \'s:structure names',
            \'m:modules,module names',
            \'c:consts,static constants',
            \'t:traits,traits',
            \'i:impls,trait implementations',
        \]
    \}

    " Taboo
    let g:taboo_tab_format = "∴ %P/%f%m "
    let g:taboo_renamed_tab_format = "∴ %P/%f%m "

    colorscheme noctu
