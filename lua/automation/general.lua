vim.cmd [[
augroup terminal_no_nu 
	autocmd!
	autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
]]
vim.cmd [[
augroup filetype_vim
	autocmd!
	autocmd FileType vim,cpp,c,py,lua setlocal foldmethod=marker
augroup END
]]

