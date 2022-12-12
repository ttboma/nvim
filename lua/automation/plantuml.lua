vim.cmd [[
augroup plantuml_previewer 
	autocmd!
	autocmd FileType uml let g:plantuml_previewer#plantuml_jar_path = get(matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\v.*\s[''"]?(\S+plantuml\.jar).*'),1,0)
augroup END
]]
