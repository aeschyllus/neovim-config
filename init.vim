set nobackup
set nowritebackup
set noswapfile
set number
set relativenumber
set breakindent
set breakindentopt
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set splitright
set splitbelow
set nowrap
set signcolumn=yes
set mouse=a

call plug#begin("~/nvim/plugged")
  " General
  Plug 'vim-airline/vim-airline'          " Status tabline theme
  Plug 'vim-airline/vim-airline-themes'   " Status tabline theme
  Plug 'embark-theme/vim', {'as': 'embark', 'branch': 'main'}
  Plug 'scrooloose/nerdtree'              " File explorer with icons
  Plug 'ryanoasis/vim-devicons'           " File explorer with icons
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " File search
  Plug 'junegunn/fzf.vim'                 " File search
  Plug 'mhinz/vim-signify'                " Show changes in code (git). vim-gitgutter alternative
  Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multi-select
  Plug 'preservim/tagbar'                 " For efficient code navigation
  Plug 'tpope/vim-fugitive'               " Git plugin
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'alvan/vim-closetag'
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Lanugage client
  let g:coc_global_extensions = [
        \'coc-tsserver',
        \'coc-emmet',
        \'coc-css',
        \'coc-html',
        \'coc-json',
        \'coc-prettier',
        \'coc-pairs'
        \]

  " PHP (Tailored for Laravel)
  Plug 'StanAngeloff/php.vim'             " Improved PHP syntax highlighting
  Plug 'sheerun/vim-polyglot'             " Laravel blade formatter

  " Javascript (Tailored for React)
  Plug 'pangloss/vim-javascript'          " JS highlighting
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'         " JSX highlighting
  Plug 'peitalin/vim-jsx-typescript'      " Typescript highlighting
call plug#end()

" Plugin specific settings
source $HOME/.config/nvim/plugin_configs/nerdtree.vim
source $HOME/.config/nvim/plugin_configs/fzf.vim
source $HOME/.config/nvim/plugin_configs/coc-blade.vim
source $HOME/.config/nvim/plugin_configs/vim-closetag.vim
source $HOME/.config/nvim/plugin_configs/coc.vim

" Key remaps
source $HOME/.config/nvim/remaps.vim

" Enable theming support
if (has("termguicolors"))
  set termguicolors
endif

" Theme
syntax enable

colorscheme embark

let g:airline_powerline_fonts=1
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE
highlight LineNr guibg=NONE

filetype on

autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 autoindent

nmap <F8> :TagbarToggle<CR>
nmap <leader>do <Plug>(coc-codeaction)
