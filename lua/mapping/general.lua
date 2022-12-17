-- <learder>=,
vim.cmd[[let mapleader = ","]]
-- Quick change from inset mode to normal
vim.cmd [[inoremap jk <esc>]]
-- Quick context nevigation {{{
vim.cmd [[
nnoremap H _
nnoremap J 20jzz
nnoremap K 20kzz
nnoremap L g_
]]
-- }}}
-- To use `CTRL+{h,j,k,l}` to navigate windows from any mode: {{{
vim.cmd [[
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
]]
-- }}}
-- Jump to tags {{{
vim.cmd[[
nnoremap <M-l> <C-]>
nnoremap <M-h> <C-t>
nnoremap <M-j> :tn<cr>
nnoremap <M-k> :tp<cr>
]]
-- }}}
-- Jump to bufers{{{ 
vim.cmd[[
nnoremap <M-n> :bn<cr> 
nnoremap <M-p> :bp<cr>
]]
-- }}}
-- Edit RC files {{{
vim.cmd [[
nnoremap <leader>ev :vsplit ~/.config/nvim/init.lua<cr>
nnoremap <leader>em :vsplit ~/.tmux.conf<cr>
nnoremap <leader>es :vsplit ~/.zshrc<cr>
nnoremap <leader>et :vsplit ~/.config/kitty/kitty.conf<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
]]
-- }}}
vim.cmd [[nnoremap * *N]]
vim.cmd [[nnoremap # #N]]
