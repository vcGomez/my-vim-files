let mapleader="," "set the leader from '\'(default) to ','
"This is a plugin manager for vim. Just add your plugins to the bundle folder in ~/.vim
execute pathogen#infect()
call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()
syntax on 
filetype plugin indent on "adjust plugin uses according to the type of file

"sets a color scheme of my choice
set t_Co=256
if &t_Co >= 256
    colorscheme mustang
endif

set incsearch "show search matches as you type
set nobackup
set noswapfile "prevents creation of backups

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" this configures the indentation guide plugin
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"basic configuration
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab "inserts tabs in the start of a line according to shiftwidth, not tabstop
set number
set pastetoggle=<F2> "by pressing F2, you can paste stuff without the indenting shitstorm from autoindent
syntax on

" SYNTASTIC plugin configuration
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
