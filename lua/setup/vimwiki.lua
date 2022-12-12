vim.cmd [[
let g:vimwiki_list = [
	\ 	{ 'path'               : '$HOME/SYCvimwiki',
	\     'index'              : 'README',
	\     'auto_toc'           : 1,
  	\ 	  'path_html'          : '$HOME/SYCvimwiki/html_site/',
	\     'template_path'      : '$HOME/SYCvimwiki/templates/',
	\ 	  'template_default'   : 'def_template',
	\     'template_ext'       : '.html',
	\     'nested_syntaxes'    : {'python': 'python', 'c++': 'cpp', 'yaml': 'yaml' },
	\     'auto_tags'          : 1,
	\     'auto_diary_index'   : 1,
	\     'auto_generate_links': 1,
	\     'auto_generate_tags' : 1,
	\   },
	\ ]
]]

-- add the pre tag for inserting code snippets
vim.cmd [[let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr, pre, script']]
