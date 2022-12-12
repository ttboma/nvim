-- Exit Vim if NERDTree is the only window remaining in the only tab.
-- Close the tab if NERDTree is the only window remaining in it.
vim.cmd [[
augroup nerdtree_open
	autocmd!
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
augroup END
]]
