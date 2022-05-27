return require 'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use { 'nvim-orgmode/orgmode', config = function() require('orgmode').setup {} end }
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    use 'mhinz/vim-signify'
    use 'voldikss/vim-floaterm'
    use 'jiangmiao/auto-pairs'
end)
