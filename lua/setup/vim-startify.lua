vim.cmd [[
let g:startify_session_dir='~/.vim/session'                                                                 
let g:startify_change_to_dir = 1                                                                            
let g:startify_session_before_save = [ 'silent! tabdo NERDTreeClose' ]                                      
let g:startify_session_delete_buffers = 1                                                                   
let g:startify_files_number = 20                                                                             
                                                                                                         
let s:bookmarks1 = [                                                                                       
    \ '~/SYCvimwiki/README.wiki',
    \ ]                                                                                                     
let s:bookmarks2 = [                                                                                       
    \ '~/.config/nvim/init.lua',
    \ '~/.vim/vimrc',
    \ '~/.tmux.conf',                                                                                      
    \ '~/.zshrc',                                                                                      
    \ '~/.config/kitty/kitty.conf',
	\ '~/.config/ranger/rc.conf',
    \ ]                                                                                                     
let s:bookmarks3 = [                                                                                       
    \ '~/.vim/SYCsnippets/cpp.snippets',
    \ ]                                                                                                     
let s:bookmarks4 = [                                                                                       
	\ '~/.local/share/Trash',
    \ ]                                                                                                     
                                                                                                         
let g:startify_lists = [                                                                                   
      \ {'header': ['   Wiki'    ], 'type': {-> map(s:bookmarks1, '{"line": v:val, "path": v:val}')}},     
      \ {'header': ['   RC Files'], 'type': {-> map(s:bookmarks2, '{"line": v:val, "path": v:val}')}},     
      \ {'header': ['   Snippets'], 'type': {-> map(s:bookmarks3, '{"line": v:val, "path": v:val}')}},     
      \ {'header': ['   Trash'   ], 'type': {-> map(s:bookmarks4, '{"line": v:val, "path": v:val}')}},     
      \ {'header': ['   Sessions'], 'type': 'sessions'},                                                   
      \ {'header': ['   Commands'], 'type': 'commands'},                                                   
      \ {'header': ['   MRU']     , 'type': 'files'},                                                      
      \ ]                                                                                                   
]]
