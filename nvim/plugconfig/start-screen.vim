let g:startify_custom_header = [
        \ '    __  ______   ____',
        \ '   /  |/  /   | / __ \',
        \ '  / /|_/ / /| |/ / / /',
        \ ' / /  / / ___ / /_/ /',
        \ '/_/  /_/_/  |_\____/',
        \]

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.lua' },
            \ { 'z': '~/.config/zsh/.zshrc' },
            \ ]
