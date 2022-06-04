vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>', {})
vim.api.nvim_set_keymap('n', ';', ':', {})
vim.api.nvim_set_keymap('i', '<c-j>', 'copilot#Accept("\\<CR>")', { silent = true, script = true, expr = true })
vim.api.nvim_set_keymap('i', '<c-s>', '<ESC>:w<CR>a', {})
vim.api.nvim_set_keymap('i', '<c-p>', '<up>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<c-n>', '<down>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<c-b>', '<left>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<M-b>', '<S-left>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<c-f>', '<right>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<M-f>', '<S-right>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<c-k>', '<C-o>D', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<M-d>', '<C-o>dw', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<c-e>', '<end>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<c-a>', '<home>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('i', '<c-d>', '<del>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope find_files prompt_prefix=🔍 <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', '<cmd>Telescope<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-x>', '<cmd>Telescope<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '-', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>FloatermToggle <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>FloatermNew --width=0.8 --height=0.8 lazygit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>/', '<cmd>Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<space>/', '<cmd>Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', { silent = true })
vim.api.nvim_set_keymap('n', 'H', '<cmd>vertical resize+10<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '<cmd>resize-10<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '<cmd>resize+10<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '<cmd>vertical resize-10<CR>', { noremap = true, silent = true })


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', ':BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseAllButPinned<CR>
--                 :BufferCloseAllButCurrentOrPinned<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
-- map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
