vim.keymap.set("n", "<leader><tab>", ":NvimTreeFindFileToggle<cr>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select, {noremap = true, silent = true})

