vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n','<c-s>',':w<CR>',{})
vim.api.nvim_set_keymap('n',';',':',{})
vim.api.nvim_set_keymap('i','<c-s>','<ESC>:w<CR>a',{})
vim.api.nvim_set_keymap('n','<leader>n',':NvimTreeToggle<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>f',':Telescope find_files prompt_prefix=🔍 <CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<C-r>',':Telescope<CR>',{noremap =true,silent = true})
vim.api.nvim_set_keymap('n','<M-x>',':Telescope<CR>',{noremap =true,silent = true})
vim.api.nvim_set_keymap('n','-','$',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','<leader>s',':FloatermToggle<CR>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('t','<leader>s','<C-\\><C-n>:FloatermToggle<CR>',{silent = true})
vim.api.nvim_set_keymap('n','H',':vertical resize+10<CR>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','J',':resize-10<CR>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','K',':resize+10<CR>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','L',':vertical resize-10<CR>',{noremap = true,silent = true})

