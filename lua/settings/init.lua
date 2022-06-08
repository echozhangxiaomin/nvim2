vim.opt.autowrite = true
vim.opt.confirm = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.laststatus = 3
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wrap = false
vim.opt.scrolloff = 5
vim.opt.fileencoding = 'utf-8'
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'
vim.opt.relativenumber = false
vim.opt.number = false
vim.opt.cursorline = false
vim.opt.hidden = true
vim.opt.updatetime = 200
vim.opt.timeoutlen = 2000
vim.opt.foldenable = true
vim.opt.foldmethod = 'indent'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 99
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.buflisted = true
vim.wo.cursorcolumn = false
vim.go.cmdheight = 1
vim.notify = require("notify")
vim.cmd [[ set clipboard+=unnamedplus ]]
