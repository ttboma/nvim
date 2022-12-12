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
-- To use `ALT+{h,j,k,l}` to navigate windows from any mode: {{{
vim.cmd [[
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l

inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
]]
-- }}}
-- Jump to tags {{{
vim.cmd[[
nnoremap <C-l> <C-]>
nnoremap <C-h> <C-t>
nnoremap <C-j> :tn<cr>
nnoremap <C-k> :tp<cr>
]]
-- }}}
-- Jump to bufers{{{ 
vim.cmd[[
nnoremap <C-n> :bn<cr> 
nnoremap <C-p> :bp<cr>
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
