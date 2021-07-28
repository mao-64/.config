" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
nnoremap <leader>fv <cmd>lua require'mao.telescope'.nvim_files()<CR>
nnoremap <leader>fc <cmd>lua require'mao.telescope'.conf_files()<CR>
nnoremap <leader>fg :Telescope git_files<CR>
nnoremap <leader>fh :Telescope help_tags<CR>


" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['s'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['n'] = [ ':Fern . -drawer -toggle'    , 'fern']

let g:which_key_map['f'] = {
      \ 'name' : '+Telescope' ,
      \ 'f' : [':Telescope find_files'     , 'find_files']          ,
      \ 'v' : 'vim'          ,
      \ 'g' : 'git'          ,
      \ 'c' : '.config'          ,
      \ 'h' : 'help'          ,
      \ }


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
