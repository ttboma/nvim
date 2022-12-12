vim.cmd "colorscheme dracula"

vim.cmd [[
filetype plugin indent on
syntax enable

hi Normal guibg=NONE ctermbg=NONE                                              
hi Comment cterm=italic gui=italic
]]

local set = vim.opt
set.tabstop=4                                                                      
set.expandtab=false
set.shiftwidth=4                                                                   
set.wrap=false
set.nu=true                                                                             
set.relativenumber=true
set.cursorline=true                                                                     
set.cursorcolumn=true                                                                     
set.conceallevel=2                                                                 
set.encoding='UTF-8'
set.hlsearch=true                                                           
set.mouse='a'

-- to have tmux show italic
-- this settings follow [gutoyr/tmux_italic.md](https://gist.github.com/gutoyr/4192af1aced7a1b555df06bd3781a722)
vim.cmd [[
set t_ZH=[3m
set t_ZR=[23m
]]

