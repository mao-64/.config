vim.wo.colorcolumn = "80,100"
vim.g.tokyonight_style = "night"

vim.cmd [[
let g:solarized_termcolors=256
colorscheme tokyonight
set termguicolors

highlight link CompeDocumentation NormalFloat
"highlight Normal guibg=none
"highlight NormalNC guibg=none
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme * hi NormalNC ctermbg=none guibg=none
au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none
]]

--vim.cmd ("highlight Normal guibg=none")
--vim.cmd ("highlight NormalNC guibg=none")
--vim.cmd ("highlight link CompeDocumentation NormalFloat")
