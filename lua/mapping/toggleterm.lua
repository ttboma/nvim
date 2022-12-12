-- {{{
-- By applying the mappings this way you can pass a count to your
-- mapping to open a specific window.
-- For example: 2<leader>th will open terminal 2
vim.cmd[[nnoremap <silent><leader>x <Cmd>exe v:count1 . "ToggleTerm direction=horizontal"<CR>]]
vim.cmd[[inoremap <silent><leader>x <Esc><Cmd>exe v:count1 . "ToggleTerm direction=horizontal"<CR>]]
vim.cmd[[nnoremap <silent><leader>t <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>]]
vim.cmd[[inoremap <silent><leader>t <Esc><Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>]]
vim.cmd[[nnoremap <silent><leader>v <Cmd>exe v:count1 . "ToggleTerm direction=vertical"<CR>]]
vim.cmd[[inoremap <silent><leader>v <Esc><Cmd>exe v:count1 . "ToggleTerm direction=vertical"<CR>]]
-- }}}
-- quit toggleterm {{{
vim.cmd[[tnoremap <silent><leader>q <C-\><C-N>:q<CR>]]
vim.cmd[[nnoremap <silent><leader>q :q<CR>]]
-- }}}
-- Navigate to the next window (including floating) {{{
vim.cmd [[tnoremap <A-n> <C-\><C-n><C-w>w]]
vim.cmd [[inoremap <A-n> <C-w>w]]
vim.cmd [[nnoremap <A-n> <C-w>w]]
-- }}}
vim.cmd[[tnoremap <esc><esc> <C-\><C-N>]]
