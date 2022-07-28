:set number
:set ma
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nohlsearch
:set scrolloff=8
:set noswapfile
vnoremap <space>F :lua vim.lsp.buf.range_formatting() <CR>
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
" Line below to enable TreeSitter in astro files
au! BufRead,BufNewFile *.astro set filetype=astro
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
" Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/numToStr/Comment.nvim'
Plug 'https://github.com/JoosepAlviste/nvim-ts-context-commentstring'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/xiyaowong/nvim-transparent'
Plug 'https://github.com/ap/vim-css-color'
" Plugins for adding snippets, compatible with vscode snippets, see github page for vsnip
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"Plugins for vim-cmp (autocompletion), lsp (language servers)
Plug 'https://github.com/williamboman/nvim-lsp-installer'
Plug 'https://github.com/neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" Plugin for using null-ls
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/jose-elias-alvarez/null-ls.nvim'
" Plugin for autopair
Plug 'windwp/nvim-autopairs'
" Plugins for FZF fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plugin for opening terminal inside of nvim
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
call plug#end()
lua require('Comment').setup()
lua << eof
	require("nvim-lsp-installer").setup {}
eof

colorscheme gruvbox 

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ }

:source ~/.config/nvim/lua_configs/other_modules/vim-cmp_config.lua
:source ~/.config/nvim/lua_configs/other_modules/treesitter_config.lua
:source ~/.config/nvim/lua_configs/other_modules/nvim-transparent_config.lua
:source ~/.config/nvim/vimscript_configs/vim-vsnip_config.vim
:source ~/.config/nvim/lua_configs/other_modules/lsp-installer_config.lua
:source ~/.config/nvim/lua_configs/other_modules/lsp_config.lua 
:source ~/.config/nvim/lua_configs/other_modules/barbar_config.lua 
:source ~/.config/nvim/lua_configs/other_modules/null-ls_config.lua
:source ~/.config/nvim/lua_configs/other_modules/comment.lua
:source ~/.config/nvim/lua_configs/other_modules/autopair_config.lua
:source ~/.config/nvim/lua_configs/other_modules/toggleterm_config.lua


