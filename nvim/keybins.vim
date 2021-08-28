let mapleader =" "

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Left> :vertical resize +5<CR>
map <Right> :vertical resize -5<CR>
map <Up> :resize +5<CR>
map <Down> :resize -5<CR>

nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-j> :m '>+1<CR>gv=gv

nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
nnoremap <leader>fv <cmd>lua require'mao.telescope'.nvim_files()<CR>
nnoremap <leader>fc <cmd>lua require'mao.telescope'.conf_files()<CR>
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope git_files<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
"nnoremap <leader>wt :vsplit|:terminal<CR>
"nnoremap <leader>wt :vnew|:terminal
nnoremap <leader>tt :terminal<CR>
nnoremap <leader>tn :vsplit<CR>:terminal<CR>

nnoremap <leader>n :NvimTreeToggle<CR>
