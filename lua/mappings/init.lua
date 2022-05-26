vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n','<c-s>',':w<CR>',{})
vim.api.nvim_set_keymap('n',';',':',{})
vim.api.nvim_set_keymap('i','<c-s>','<ESC>:w<CR>a',{})
vim.api.nvim_set_keymap('n','<leader>n',':NvimTreeToggle<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>f',':Telescope find_files<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<C-r>',':Telescope<CR>',{noremap =true,silent = true})
vim.api.nvim_set_keymap('n','<M-x>',':Telescope<CR>',{noremap =true,silent = true})
vim.api.nvim_set_keymap('n','-','$',{noremap = true,silent = true})
