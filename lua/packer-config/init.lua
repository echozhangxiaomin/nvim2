return require 'packer'.startup(function()
    -- Packer manage tools configuration
    use 'wbthomason/packer.nvim'
    -- theme settings
    use 'EdenEast/nightfox.nvim'
    -- which key
    use 'linty-org/key-menu.nvim'
    -- nerdtree settings
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    -- notify box
    use 'rcarriga/nvim-notify'
    use 'nvim-lualine/lualine.nvim'
    use 'romgrk/barbar.nvim'
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use { 'nvim-orgmode/orgmode', config = function() require('orgmode').setup {} end }
    use { 'lukas-reineke/headlines.nvim', config = function() require('headlines').setup() end, }
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    -- not use the the installer you can use the os software manager such as brew and apt-get to install the lsp client
    -- and the best way is the most simple way 
    -- use {"williamboman/nvim-lsp-installer", requires = { { "nvim-lua/lsp-status.nvim" } }}
    -- java language support and now question can not open the source file and use the vim config and can open the file 
    use 'mfussenegger/nvim-jdtls'
    use { 'rmagatti/goto-preview', config = function() require('goto-preview').setup {} end }
    use 'mhinz/vim-signify'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    -- terminal
    use 'voldikss/vim-floaterm'
    use 'jiangmiao/auto-pairs'
    -- comment
    use 'tpope/vim-commentary'
    -- Autocompletion plugin
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    -- code completion
    use 'github/copilot.vim'
    use 'editorconfig/editorconfig-vim'
    -- tags
    use 'vim-scripts/taglist.vim'
end)
