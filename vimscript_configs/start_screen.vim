let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'c': '~/.config/' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'l': '~/.config/nvim/lua_configs/other_modules' },
            \ ]
let g:startify_session_autoload = 1
" let startify take care of buffers
let g:startify_session_delete_buffers = 1
" use unicode 
let g:startify_fortune_use_unicode = 1
" auto update sessions
let g:startify_session_persistence = 1
" delete empty buffer upon quit
let g:startify_enable_special = 0
" custom header
let g:startify_custom_header = [
		\ ' __  __     _             _        (")                     _  _                              _ ',           
		\ '|  \/  |   (_)    _ _    | |_       \|     ___      o O O | \| |    ___     ___    __ __    (_)    _ __ ',   
		\ '| |\/| |   | |   | '' \   | | \           (_-<     o       | .` |   / -_)   / _ \   \ V /    | |   | ''  \ ',  
		\ '|_|__|_|  _|_|_  |_||_|  |_||_|   _____   /__/_   TS__[O] |_|\_|   \___|   \___/   _\_/_   _|_|_  |_|_|_| ',
		\ '_|"""""|_|"""""|_|"""""|_|"""""|_|     |_|"""""| {======|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| ',
		\ '"`-0-0-`"`-0-0-`"`-0-0-`"`-0-0-`"`-0-0-`"`-0-0-`./o--000`"`-0-0-`"`-0-0-`"`-0-0-`"`-0-0-`"`-0-0-`"`-0-0- ']
