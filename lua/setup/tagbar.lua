vim.cmd [[
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'                                 
let g:tagbar_show_balloon = 1                                                     
let g:tagbar_width = max([40, winwidth(0) / 4])                                  
]]

-- To find the tags file (https://blog.csdn.net/billfeller/article/details/40316501?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-40316501-blog-119026248.pc_relevant_multi_platform_whitelistv4eslandingrelevant2&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-40316501-blog-119026248.pc_relevant_multi_platform_whitelistv4eslandingrelevant2&utm_relevant_index=1)
vim.cmd [[
set tags=tags;
set autochdir
]]
