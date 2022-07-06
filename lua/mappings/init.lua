vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, nowait = true }
map('', '<c-p>', '<up>', opts)
map('', '<c-n>', '<down>', opts)
map('', '<c-b>', '<left>', opts)
map('', '<M-b>', '<S-left>', opts)
map('', '<c-f>', '<right>', opts)
map('', '<M-f>', '<S-right>', opts)
map('', '<c-e>', '<end>', opts)
map('', '<c-a>', '<home>', opts)
map('', '<c-d>', '<del>', opts)
map('n', '<c-s>', ':w<CR>', opts)
map('n', ';', ':', {})
map('n', '!', ':!', {})
map('i', '<c-j>', 'copilot#Accept("\\<CR>")', { silent = true, expr = true, script = true })
map('i', '<c-s>', '<ESC>:w<CR>a', opts)
map('i', '<c-k>', '<C-o>D', opts)
map('i', '<M-d>', '<C-o>dw', opts)
map('n', '<leader>n', '<cmd>NvimTreeFindFileToggle<CR>', opts)
map('n', '<leader>r', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<C-q>', '<cmd>Telescope find_files prompt_prefix=🔍 <CR>', opts)
map('n', '<leader>f', '<cmd>Telescope find_files prompt_prefix=🔍 <CR>', opts)
map('n', '<C-r>', '<cmd>Telescope<CR>', opts)
map('n', '<M-x>', '<cmd>Telescope<CR>', opts)
map('n', '<leader>s', '<cmd>FloatermToggle <CR>', opts)
map('n', '<leader>g', '<cmd>FloatermNew --width=0.8 --height=0.8 lazygit<CR>', opts)
map('n', '<space>/', '<cmd>Commentary<CR>', opts)
map('v', '<space>/', '<cmd>Commentary<CR>', opts)
map('t', '<esc>', '<C-\\><C-n>', opts)
map('n', 'H', '<cmd>vertical resize+10<CR>', opts)
map('n', 'J', '<cmd>resize-10<CR>', opts)
map('n', 'K', '<cmd>resize+10<CR>', opts)
map('n', 'L', '<cmd>vertical resize-10<CR>', opts)
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ':BufferMoveNext<CR>', opts)
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
map('n', '<A-p>', ':BufferPin<CR>', opts)
map('n', '<A-c>', ':BufferClose<CR>', opts)
map('n', '<space>bc', ':BufferCloseAllButCurrentOrPinned<CR>', opts)
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', opts)

vim.cmd('inoremap <C-a> <home>')
vim.cmd('inoremap <C-b> <left>')
vim.cmd('inoremap <C-f> <right>')
vim.cmd('inoremap <C-e> <end>')
vim.cmd('inoremap <C-d> <del>')
vim.cmd('inoremap <C-n> <down>')
vim.cmd('inoremap <C-p> <up>')
vim.cmd('inoremap <C-k> <C-o>D')
vim.cmd('inoremap <M-d> <C-o>dw')
vim.cmd('inoremap <M-f> <S-right>')
vim.cmd('inoremap <M-b> <S-left>')

vim.cmd('cnoremap <C-a> <home>')
vim.cmd('cnoremap <C-b> <left>')
vim.cmd('cnoremap <C-f> <right>')
vim.cmd('cnoremap <C-e> <end>')
vim.cmd('cnoremap <C-d> <del>')
vim.cmd('cnoremap <C-n> <down>')
vim.cmd('cnoremap <C-p> <up>')
vim.cmd('inoremap <M-f> <S-right>')
vim.cmd('inoremap <M-b> <S-left>')
