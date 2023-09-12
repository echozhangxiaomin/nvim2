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
map('', '<c-g>', '<ESC>',opts)
map('', '<c-c>', '<ESC>:qa!<CR>',opts)
map('n', '<c-s>', ':w<CR>', opts)
map('n', ';', ':', {})
map('v', ';', ':', {})
map('n', '!', ':!', {})
map('i', '<c-j>', 'copilot#Accept("\\<CR>")', { silent = true, expr = true, script = true })
map('i', '<c-s>', '<ESC>:w<CR>a', opts)
map('i', '<c-k>', '<C-o>dd', opts)
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
vim.cmd('inoremap <C-k> <C-o>dd')
vim.cmd('inoremap <M-d> <C-o>dw')
vim.cmd('inoremap <M-f> <S-right>')
vim.cmd('inoremap <M-b> <S-left>')
-- comment the c-w , or c-h ,or c-u delete char forward

vim.cmd('cnoremap <C-a> <home>')
vim.cmd('cnoremap <C-b> <left>')
vim.cmd('cnoremap <C-f> <right>')
vim.cmd('cnoremap <C-e> <end>')
vim.cmd('cnoremap <C-d> <del>')
vim.cmd('cnoremap <C-n> <down>')
vim.cmd('cnoremap <C-p> <up>')
vim.cmd('inoremap <M-f> <S-right>')
vim.cmd('inoremap <M-b> <S-left>')



-- This Vim setting controls the delay before the popup appears. The way it
-- works is, if you have mappings for, say, the key "a" and the key sequence
-- "ab", if you type "a", then Vim waits timeoutlen, and if you don't press
-- another key before that amount of time, then the "a" mapping is executed, but
-- if you press "b" before timeoutlen, then the "ab" mapping is executed.
vim.o.timeoutlen = 300

-- If you use <Space> as your mapping prefix, then this will make the key-menu
-- popup appear in Normal mode, after you press <Space>, after timeoutlen.
require 'key-menu'.set('n', '<Space>')

-- Use the desc option to Vim's built-in vim.keymap.set to describe mappings.
vim.keymap.set('n', '<Space>w', '<Cmd>w<CR>', {desc='Save'})
vim.keymap.set('n', '<Space>q', '<Cmd>q<CR>', {desc='Quit'})

-- You can also pass Lua functions to vim.keymap.set.
local erase_all_lines = function()
  vim.api.nvim_buf_set_lines(0, 0, -1, false, {})
end
vim.keymap.set('n', '<Space>k', erase_all_lines, {desc='Erase all'})

-- You can put mappings several keys deep, in a mapping group. For some kinds of
-- mappings, even if you don't include a description, key-menu will try to
-- render them nicely, for example by not showing the <Cmd> and <CR>.
vim.keymap.set('n', '<Space>gs', '<Cmd>Git status<CR>')
vim.keymap.set('n', '<Space>gc', '<Cmd>Git commit<CR>')

-- To describe the group of mappings under <Space>g, use key-menu.set.
require 'key-menu'.set('n', '<Space>g', {desc='Git'})

-- The function key-menu.set is just a thin wrapper around vim.keymap.set, and
-- is provided for convenience so that you don't have to type the key sequence
-- twice. The above call to key-menu.set is equivalent to this:
vim.keymap.set('n', '<Space>g',
  function() require 'key-menu'.open_window('<Space>g') end,
  {desc='Git'})

-- The arguments to key-menu.set are the same as those for vim.keymap.set,
-- except that the RHS/callback argument is omitted.

-- Create a buffer-local mapping group to echo some example text.
require 'key-menu'.set('n', '<Space>s',
  {desc = 'Say something', buffer = true})
-- Create buffer-local mappings to say hello and goodbye.
vim.keymap.set('n', '<Space>sh',
  function() print('Hello, world') end,
  {desc = '...hello!', buffer = true})
vim.keymap.set('n', '<Space>sg',
  function() print('Goodbye, world!') end,
  {desc = '...goodbye!', buffer = true})

-- Create a mapping that does not appear in the pop up menu.
vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', {desc='HIDDEN'})
