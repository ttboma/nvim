-- required for mapping to open a specific window 
vim.cmd [[
augroup toggleterm_enter 
	autocmd TermEnter term://*toggleterm#* tnoremap <silent><leader>x <Cmd>exe v:count1 . "ToggleTerm direction=horizontal"<CR>
	autocmd TermEnter term://*toggleterm#* tnoremap <silent><leader>t <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
	autocmd TermEnter term://*toggleterm#* tnoremap <silent><leader>v <Cmd>exe v:count1 . "ToggleTerm direction=vertical"<CR>
augroup END
]]
